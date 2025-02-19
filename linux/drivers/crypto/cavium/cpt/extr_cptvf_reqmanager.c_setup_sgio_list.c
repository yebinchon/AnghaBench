
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct sglist_component {int dummy; } ;
struct pci_dev {int dev; } ;
struct cpt_vf {struct pci_dev* pdev; } ;
struct cpt_request_info {int incnt; int outcnt; int out; int in; } ;
struct cpt_info_buffer {int dlen; void* rptr_baddr; void* out_buffer; int * alternate_caddr; void* dptr_baddr; int * in_buffer; void* scatter_components; void* gather_components; } ;


 scalar_t__ COMPLETION_CODE_INIT ;
 int COMPLETION_CODE_SIZE ;
 int DMA_BIDIRECTIONAL ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_SG_IN_CNT ;
 int MAX_SG_OUT_CNT ;
 int SG_LIST_HDR_SIZE ;
 int cpu_to_be64p (int *) ;
 int dev_err (int *,char*,...) ;
 void* dma_map_single (int *,void*,int,int ) ;
 scalar_t__ dma_mapping_error (int *,void*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int *,void*,int) ;
 int setup_sgio_components (struct cpt_vf*,int ,int,void*) ;

__attribute__((used)) static inline int setup_sgio_list(struct cpt_vf *cptvf,
      struct cpt_info_buffer *info,
      struct cpt_request_info *req)
{
 u16 g_sz_bytes = 0, s_sz_bytes = 0;
 int ret = 0;
 struct pci_dev *pdev = cptvf->pdev;

 if (req->incnt > MAX_SG_IN_CNT || req->outcnt > MAX_SG_OUT_CNT) {
  dev_err(&pdev->dev, "Request SG components are higher than supported\n");
  ret = -EINVAL;
  goto scatter_gather_clean;
 }


 g_sz_bytes = ((req->incnt + 3) / 4) * sizeof(struct sglist_component);
 info->gather_components = kzalloc(g_sz_bytes, GFP_KERNEL);
 if (!info->gather_components) {
  ret = -ENOMEM;
  goto scatter_gather_clean;
 }

 ret = setup_sgio_components(cptvf, req->in,
        req->incnt,
        info->gather_components);
 if (ret) {
  dev_err(&pdev->dev, "Failed to setup gather list\n");
  ret = -EFAULT;
  goto scatter_gather_clean;
 }


 s_sz_bytes = ((req->outcnt + 3) / 4) * sizeof(struct sglist_component);
 info->scatter_components = kzalloc(s_sz_bytes, GFP_KERNEL);
 if (!info->scatter_components) {
  ret = -ENOMEM;
  goto scatter_gather_clean;
 }

 ret = setup_sgio_components(cptvf, req->out,
        req->outcnt,
        info->scatter_components);
 if (ret) {
  dev_err(&pdev->dev, "Failed to setup gather list\n");
  ret = -EFAULT;
  goto scatter_gather_clean;
 }


 info->dlen = g_sz_bytes + s_sz_bytes + SG_LIST_HDR_SIZE;
 info->in_buffer = kzalloc(info->dlen, GFP_KERNEL);
 if (!info->in_buffer) {
  ret = -ENOMEM;
  goto scatter_gather_clean;
 }

 ((u16 *)info->in_buffer)[0] = req->outcnt;
 ((u16 *)info->in_buffer)[1] = req->incnt;
 ((u16 *)info->in_buffer)[2] = 0;
 ((u16 *)info->in_buffer)[3] = 0;
 *(u64 *)info->in_buffer = cpu_to_be64p((u64 *)info->in_buffer);

 memcpy(&info->in_buffer[8], info->gather_components,
        g_sz_bytes);
 memcpy(&info->in_buffer[8 + g_sz_bytes],
        info->scatter_components, s_sz_bytes);

 info->dptr_baddr = dma_map_single(&pdev->dev,
       (void *)info->in_buffer,
       info->dlen,
       DMA_BIDIRECTIONAL);
 if (dma_mapping_error(&pdev->dev, info->dptr_baddr)) {
  dev_err(&pdev->dev, "Mapping DPTR Failed %d\n", info->dlen);
  ret = -EIO;
  goto scatter_gather_clean;
 }


 info->out_buffer = kzalloc(COMPLETION_CODE_SIZE, GFP_KERNEL);
 if (!info->out_buffer) {
  ret = -ENOMEM;
  goto scatter_gather_clean;
 }

 *((u64 *)info->out_buffer) = ~((u64)COMPLETION_CODE_INIT);
 info->alternate_caddr = (u64 *)info->out_buffer;
 info->rptr_baddr = dma_map_single(&pdev->dev,
       (void *)info->out_buffer,
       COMPLETION_CODE_SIZE,
       DMA_BIDIRECTIONAL);
 if (dma_mapping_error(&pdev->dev, info->rptr_baddr)) {
  dev_err(&pdev->dev, "Mapping RPTR Failed %d\n",
   COMPLETION_CODE_SIZE);
  ret = -EIO;
  goto scatter_gather_clean;
 }

 return 0;

scatter_gather_clean:
 return ret;
}

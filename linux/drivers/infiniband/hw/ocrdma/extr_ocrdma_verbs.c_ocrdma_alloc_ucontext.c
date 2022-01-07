
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_6__ {int pa; int va; int len; } ;
struct ocrdma_ucontext {TYPE_3__ ah_tbl; int mm_list_lock; int mm_head; } ;
struct TYPE_5__ {int fw_ver; int wqe_size; int rqe_size; int max_inline_data; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_2__ attr; int id; TYPE_1__ nic_info; } ;
struct ocrdma_alloc_ucontext_resp {int fw_ver; int dpp_wqe_size; int rqe_size; int wqe_size; int max_inline_data; int dev_id; int ah_tbl_len; int ah_tbl_page; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
typedef int resp ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 struct ocrdma_dev* get_ocrdma_dev (struct ib_device*) ;
 struct ocrdma_ucontext* get_ocrdma_ucontext (struct ib_ucontext*) ;
 int ib_copy_to_udata (struct ib_udata*,struct ocrdma_alloc_ucontext_resp*,int) ;
 int memcpy (int ,int ,int) ;
 int mutex_init (int *) ;
 int ocrdma_add_mmap (struct ocrdma_ucontext*,int ,int ) ;
 int ocrdma_alloc_ucontext_pd (struct ocrdma_dev*,struct ocrdma_ucontext*,struct ib_udata*) ;
 int ocrdma_dealloc_ucontext_pd (struct ocrdma_ucontext*) ;
 int ocrdma_del_mmap (struct ocrdma_ucontext*,int ,int ) ;
 int roundup (int,int ) ;
 int virt_to_phys (int ) ;

int ocrdma_alloc_ucontext(struct ib_ucontext *uctx, struct ib_udata *udata)
{
 struct ib_device *ibdev = uctx->device;
 int status;
 struct ocrdma_ucontext *ctx = get_ocrdma_ucontext(uctx);
 struct ocrdma_alloc_ucontext_resp resp = {};
 struct ocrdma_dev *dev = get_ocrdma_dev(ibdev);
 struct pci_dev *pdev = dev->nic_info.pdev;
 u32 map_len = roundup(sizeof(u32) * 2048, PAGE_SIZE);

 if (!udata)
  return -EFAULT;
 INIT_LIST_HEAD(&ctx->mm_head);
 mutex_init(&ctx->mm_list_lock);

 ctx->ah_tbl.va = dma_alloc_coherent(&pdev->dev, map_len,
         &ctx->ah_tbl.pa, GFP_KERNEL);
 if (!ctx->ah_tbl.va)
  return -ENOMEM;

 ctx->ah_tbl.len = map_len;

 resp.ah_tbl_len = ctx->ah_tbl.len;
 resp.ah_tbl_page = virt_to_phys(ctx->ah_tbl.va);

 status = ocrdma_add_mmap(ctx, resp.ah_tbl_page, resp.ah_tbl_len);
 if (status)
  goto map_err;

 status = ocrdma_alloc_ucontext_pd(dev, ctx, udata);
 if (status)
  goto pd_err;

 resp.dev_id = dev->id;
 resp.max_inline_data = dev->attr.max_inline_data;
 resp.wqe_size = dev->attr.wqe_size;
 resp.rqe_size = dev->attr.rqe_size;
 resp.dpp_wqe_size = dev->attr.wqe_size;

 memcpy(resp.fw_ver, dev->attr.fw_ver, sizeof(resp.fw_ver));
 status = ib_copy_to_udata(udata, &resp, sizeof(resp));
 if (status)
  goto cpy_err;
 return 0;

cpy_err:
 ocrdma_dealloc_ucontext_pd(ctx);
pd_err:
 ocrdma_del_mmap(ctx, ctx->ah_tbl.pa, ctx->ah_tbl.len);
map_err:
 dma_free_coherent(&pdev->dev, ctx->ah_tbl.len, ctx->ah_tbl.va,
     ctx->ah_tbl.pa);
 return status;
}

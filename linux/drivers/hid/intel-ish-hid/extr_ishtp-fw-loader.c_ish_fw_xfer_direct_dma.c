
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_4__ {int max_dma_buf_size; } ;
struct shim_fw_info {TYPE_1__ ldr_capability; } ;
struct TYPE_5__ {int command; } ;
struct TYPE_6__ {int is_last; int offset; int size; int xfer_mode; TYPE_2__ hdr; } ;
struct loader_xfer_dma_fragment {scalar_t__ ddr_phys_addr; TYPE_3__ fragment; } ;
struct loader_msg_hdr {int dummy; } ;
struct ishtp_cl_data {int flag_retry; int cl_device; } ;
struct firmware {int size; int * data; } ;
struct device {int dummy; } ;
typedef int ldr_xfer_dma_frag_ack ;
typedef int ldr_xfer_dma_frag ;
typedef scalar_t__ dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int L1_CACHE_BYTES ;
 int LOADER_CMD_XFER_FRAGMENT ;
 int LOADER_XFER_MODE_DIRECT_DMA ;
 int cl_data_to_dev (struct ishtp_cl_data*) ;
 int clflush_cache_range (void*,int) ;
 int dev_dbg (int ,char*,int,int,int,scalar_t__) ;
 int dev_err (int ,char*) ;
 scalar_t__ dma_buf_size_limit ;
 scalar_t__ dma_map_single (struct device*,void*,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_sync_single_for_device (struct device*,scalar_t__,int,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,int,int ) ;
 struct device* ishtp_get_pci_device (int ) ;
 int kfree (void*) ;
 void* kmalloc (int,int) ;
 int loader_cl_send (struct ishtp_cl_data*,int *,int,int *,int) ;
 int memcpy (void*,int *,int) ;
 int min3 (int,size_t,size_t) ;

__attribute__((used)) static int ish_fw_xfer_direct_dma(struct ishtp_cl_data *client_data,
      const struct firmware *fw,
      const struct shim_fw_info fw_info)
{
 int rv;
 void *dma_buf;
 dma_addr_t dma_buf_phy;
 u32 fragment_offset, fragment_size, payload_max_size;
 struct loader_msg_hdr ldr_xfer_dma_frag_ack;
 struct loader_xfer_dma_fragment ldr_xfer_dma_frag;
 struct device *devc = ishtp_get_pci_device(client_data->cl_device);
 u32 shim_fw_buf_size =
  fw_info.ldr_capability.max_dma_buf_size;







 payload_max_size = min3(fw->size,
    (size_t)shim_fw_buf_size,
    (size_t)dma_buf_size_limit);





 payload_max_size &= ~(L1_CACHE_BYTES - 1);

 dma_buf = kmalloc(payload_max_size, GFP_KERNEL | GFP_DMA32);
 if (!dma_buf) {
  client_data->flag_retry = 1;
  return -ENOMEM;
 }

 dma_buf_phy = dma_map_single(devc, dma_buf, payload_max_size,
         DMA_TO_DEVICE);
 if (dma_mapping_error(devc, dma_buf_phy)) {
  dev_err(cl_data_to_dev(client_data), "DMA map failed\n");
  client_data->flag_retry = 1;
  rv = -ENOMEM;
  goto end_err_dma_buf_release;
 }

 ldr_xfer_dma_frag.fragment.hdr.command = LOADER_CMD_XFER_FRAGMENT;
 ldr_xfer_dma_frag.fragment.xfer_mode = LOADER_XFER_MODE_DIRECT_DMA;
 ldr_xfer_dma_frag.ddr_phys_addr = (u64)dma_buf_phy;


 fragment_offset = 0;
 while (fragment_offset < fw->size) {
  if (fragment_offset + payload_max_size < fw->size) {
   fragment_size = payload_max_size;
   ldr_xfer_dma_frag.fragment.is_last = 0;
  } else {
   fragment_size = fw->size - fragment_offset;
   ldr_xfer_dma_frag.fragment.is_last = 1;
  }

  ldr_xfer_dma_frag.fragment.offset = fragment_offset;
  ldr_xfer_dma_frag.fragment.size = fragment_size;
  memcpy(dma_buf, &fw->data[fragment_offset], fragment_size);

  dma_sync_single_for_device(devc, dma_buf_phy,
        payload_max_size,
        DMA_TO_DEVICE);





  clflush_cache_range(dma_buf, payload_max_size);

  dev_dbg(cl_data_to_dev(client_data),
   "xfer_mode=dma offset=0x%08x size=0x%x is_last=%d ddr_phys_addr=0x%016llx\n",
   ldr_xfer_dma_frag.fragment.offset,
   ldr_xfer_dma_frag.fragment.size,
   ldr_xfer_dma_frag.fragment.is_last,
   ldr_xfer_dma_frag.ddr_phys_addr);

  rv = loader_cl_send(client_data,
        (u8 *)&ldr_xfer_dma_frag,
        sizeof(ldr_xfer_dma_frag),
        (u8 *)&ldr_xfer_dma_frag_ack,
        sizeof(ldr_xfer_dma_frag_ack));
  if (rv < 0) {
   client_data->flag_retry = 1;
   goto end_err_resp_buf_release;
  }

  fragment_offset += fragment_size;
 }

 dma_unmap_single(devc, dma_buf_phy, payload_max_size, DMA_TO_DEVICE);
 kfree(dma_buf);
 return 0;

end_err_resp_buf_release:

 dma_unmap_single(devc, dma_buf_phy, payload_max_size, DMA_TO_DEVICE);
end_err_dma_buf_release:
 kfree(dma_buf);
 return rv;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sev_data_download_firmware {int len; int address; } ;
struct page {int dummy; } ;
struct firmware {int size; int data; } ;
struct device {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOENT ;
 int GFP_KERNEL ;
 int SEV_CMD_DOWNLOAD_FIRMWARE ;
 int __free_pages (struct page*,int) ;
 int __psp_pa (struct sev_data_download_firmware*) ;
 struct page* alloc_pages (int ,int) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int get_order (int) ;
 int memcpy (struct sev_data_download_firmware*,int ,int) ;
 struct sev_data_download_firmware* page_address (struct page*) ;
 int release_firmware (struct firmware const*) ;
 int sev_do_cmd (int ,struct sev_data_download_firmware*,int*) ;
 int sev_get_firmware (struct device*,struct firmware const**) ;

__attribute__((used)) static int sev_update_firmware(struct device *dev)
{
 struct sev_data_download_firmware *data;
 const struct firmware *firmware;
 int ret, error, order;
 struct page *p;
 u64 data_size;

 if (sev_get_firmware(dev, &firmware) == -ENOENT) {
  dev_dbg(dev, "No SEV firmware file present\n");
  return -1;
 }
 data_size = ALIGN(sizeof(struct sev_data_download_firmware), 32);

 order = get_order(firmware->size + data_size);
 p = alloc_pages(GFP_KERNEL, order);
 if (!p) {
  ret = -1;
  goto fw_err;
 }





 data = page_address(p);
 memcpy(page_address(p) + data_size, firmware->data, firmware->size);

 data->address = __psp_pa(page_address(p) + data_size);
 data->len = firmware->size;

 ret = sev_do_cmd(SEV_CMD_DOWNLOAD_FIRMWARE, data, &error);
 if (ret)
  dev_dbg(dev, "Failed to update SEV firmware: %#x\n", error);
 else
  dev_info(dev, "SEV firmware update successful\n");

 __free_pages(p, order);

fw_err:
 release_firmware(firmware);

 return ret;
}

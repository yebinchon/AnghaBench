
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int xfer_mode; } ;
struct shim_fw_info {TYPE_1__ ldr_capability; } ;
struct ishtp_cl_data {int flag_retry; int retry_count; struct ishtp_cl* loader_ishtp_cl; } ;
struct ishtp_cl {int dummy; } ;
struct firmware {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int FILENAME_SIZE ;
 int GFP_KERNEL ;
 int LOADER_XFER_MODE_DIRECT_DMA ;
 int LOADER_XFER_MODE_ISHTP ;
 scalar_t__ MAX_LOAD_ATTEMPTS ;
 int cl_data_to_dev (struct ishtp_cl_data*) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,char*) ;
 int dev_warn (int ,char*,int) ;
 int get_firmware_variant (struct ishtp_cl_data*,char*) ;
 int ish_fw_start (struct ishtp_cl_data*) ;
 int ish_fw_xfer_direct_dma (struct ishtp_cl_data*,struct firmware const*,struct shim_fw_info) ;
 int ish_fw_xfer_ishtp (struct ishtp_cl_data*,struct firmware const*) ;
 int ish_hw_reset (int ) ;
 int ish_query_loader_prop (struct ishtp_cl_data*,struct firmware const*,struct shim_fw_info*) ;
 int ishtp_get_ishtp_device (struct ishtp_cl*) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int ) ;

__attribute__((used)) static int load_fw_from_host(struct ishtp_cl_data *client_data)
{
 int rv;
 u32 xfer_mode;
 char *filename;
 const struct firmware *fw;
 struct shim_fw_info fw_info;
 struct ishtp_cl *loader_ishtp_cl = client_data->loader_ishtp_cl;

 client_data->flag_retry = 0;

 filename = kzalloc(FILENAME_SIZE, GFP_KERNEL);
 if (!filename) {
  client_data->flag_retry = 1;
  rv = -ENOMEM;
  goto end_error;
 }


 rv = get_firmware_variant(client_data, filename);
 if (rv < 0)
  goto end_err_filename_buf_release;

 rv = request_firmware(&fw, filename, cl_data_to_dev(client_data));
 if (rv < 0)
  goto end_err_filename_buf_release;



 rv = ish_query_loader_prop(client_data, fw, &fw_info);
 if (rv < 0)
  goto end_err_fw_release;



 xfer_mode = fw_info.ldr_capability.xfer_mode;
 if (xfer_mode & LOADER_XFER_MODE_DIRECT_DMA) {
  rv = ish_fw_xfer_direct_dma(client_data, fw, fw_info);
 } else if (xfer_mode & LOADER_XFER_MODE_ISHTP) {
  rv = ish_fw_xfer_ishtp(client_data, fw);
 } else {
  dev_err(cl_data_to_dev(client_data),
   "No transfer mode selected in firmware\n");
  rv = -EINVAL;
 }
 if (rv < 0)
  goto end_err_fw_release;



 rv = ish_fw_start(client_data);
 if (rv < 0)
  goto end_err_fw_release;

 release_firmware(fw);
 dev_info(cl_data_to_dev(client_data), "ISH firmware %s loaded\n",
   filename);
 kfree(filename);
 return 0;

end_err_fw_release:
 release_firmware(fw);
end_err_filename_buf_release:
 kfree(filename);
end_error:

 if (client_data->flag_retry &&
     client_data->retry_count++ < MAX_LOAD_ATTEMPTS) {
  dev_warn(cl_data_to_dev(client_data),
    "ISH host firmware load failed %d. Resetting ISH, and trying again..\n",
    rv);
  ish_hw_reset(ishtp_get_ishtp_device(loader_ishtp_cl));
 } else {
  dev_err(cl_data_to_dev(client_data),
   "ISH host firmware load failed %d\n", rv);
 }
 return rv;
}

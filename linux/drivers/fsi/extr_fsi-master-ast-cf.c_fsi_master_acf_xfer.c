
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fsi_msg {int dummy; } ;
struct fsi_master_acf {int dev; } ;


 int EAGAIN ;
 int EIO ;
 int ESHUTDOWN ;
 int FSI_CRC_ERR_RETRIES ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int handle_response (struct fsi_master_acf*,int ,size_t,void*) ;
 int msleep (int) ;
 int send_request (struct fsi_master_acf*,struct fsi_msg*,size_t) ;

__attribute__((used)) static int fsi_master_acf_xfer(struct fsi_master_acf *master, uint8_t slave,
          struct fsi_msg *cmd, size_t resp_len, void *resp)
{
 int rc = -EAGAIN, retries = 0;

 resp_len <<= 3;
 while ((retries++) < FSI_CRC_ERR_RETRIES) {
  rc = send_request(master, cmd, resp_len);
  if (rc) {
   if (rc != -ESHUTDOWN)
    dev_warn(master->dev, "Error %d sending command\n", rc);
   break;
  }
  rc = handle_response(master, slave, resp_len, resp);
  if (rc != -EAGAIN)
   break;
  rc = -EIO;
  dev_dbg(master->dev, "ECRC retry %d\n", retries);


  msleep(1);
 }

 return rc;
}

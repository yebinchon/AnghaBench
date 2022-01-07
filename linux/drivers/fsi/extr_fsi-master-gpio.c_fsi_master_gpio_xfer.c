
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fsi_master_gpio {int dev; } ;
struct fsi_gpio_msg {int dummy; } ;


 int EAGAIN ;
 int EIO ;
 int FSI_CRC_ERR_RETRIES ;
 int dev_warn (int ,char*,int) ;
 int msleep (int) ;
 int poll_for_response (struct fsi_master_gpio*,int ,size_t,void*) ;
 int send_request (struct fsi_master_gpio*,struct fsi_gpio_msg*) ;

__attribute__((used)) static int fsi_master_gpio_xfer(struct fsi_master_gpio *master, uint8_t slave,
  struct fsi_gpio_msg *cmd, size_t resp_len, void *resp)
{
 int rc = -EAGAIN, retries = 0;

 while ((retries++) < FSI_CRC_ERR_RETRIES) {
  rc = send_request(master, cmd);
  if (rc)
   break;
  rc = poll_for_response(master, slave, resp_len, resp);
  if (rc != -EAGAIN)
   break;
  rc = -EIO;
  dev_warn(master->dev, "ECRC retry %d\n", retries);


  msleep(1);
 }

 return rc;
}

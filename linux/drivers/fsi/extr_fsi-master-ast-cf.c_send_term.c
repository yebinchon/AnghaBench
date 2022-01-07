
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct fsi_msg {int dummy; } ;
struct fsi_master_acf {int dev; } ;


 int EIO ;
 scalar_t__ FSI_RESP_ACK ;
 int build_term_command (struct fsi_msg*,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*,int) ;
 int read_copro_response (struct fsi_master_acf*,int ,int *,scalar_t__*) ;
 int send_request (struct fsi_master_acf*,struct fsi_msg*,int ) ;

__attribute__((used)) static int send_term(struct fsi_master_acf *master, uint8_t slave)
{
 struct fsi_msg cmd;
 uint8_t tag;
 int rc;

 build_term_command(&cmd, slave);

 rc = send_request(master, &cmd, 0);
 if (rc) {
  dev_warn(master->dev, "Error %d sending term\n", rc);
  return rc;
 }

 rc = read_copro_response(master, 0, ((void*)0), &tag);
 if (rc < 0) {
  dev_err(master->dev,
    "TERM failed; lost communication with slave\n");
  return -EIO;
 } else if (tag != FSI_RESP_ACK) {
  dev_err(master->dev, "TERM failed; response %d\n", tag);
  return -EIO;
 }
 return 0;
}

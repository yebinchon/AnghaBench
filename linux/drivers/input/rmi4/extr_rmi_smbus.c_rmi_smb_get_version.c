
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_smb_xport {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int SMB_PROTOCOL_VERSION_ADDRESS ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int rmi_smb_get_version(struct rmi_smb_xport *rmi_smb)
{
 struct i2c_client *client = rmi_smb->client;
 int retval;


 retval = i2c_smbus_read_byte_data(client, SMB_PROTOCOL_VERSION_ADDRESS);
 if (retval < 0) {
  dev_err(&client->dev, "failed to get SMBus version number!\n");
  return retval;
 }

 return retval + 1;
}

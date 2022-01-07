
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_smb_xport {int xport; } ;
struct i2c_client {int dummy; } ;


 struct rmi_smb_xport* i2c_get_clientdata (struct i2c_client*) ;
 int rmi_unregister_transport_device (int *) ;

__attribute__((used)) static int rmi_smb_remove(struct i2c_client *client)
{
 struct rmi_smb_xport *rmi_smb = i2c_get_clientdata(client);

 rmi_unregister_transport_device(&rmi_smb->xport);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nforce2_smbus {int dummy; } ;
struct i2c_adapter {int dev; struct nforce2_smbus* algo_data; } ;


 int MAX_TIMEOUT ;
 int NVIDIA_SMB_CTRL ;
 unsigned char NVIDIA_SMB_CTRL_ABORT ;
 int NVIDIA_SMB_STATUS_ABRT ;
 unsigned char NVIDIA_SMB_STATUS_ABRT_STS ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 unsigned char inb_p (int ) ;
 int msleep (int) ;
 int outb_p (unsigned char,int ) ;

__attribute__((used)) static void nforce2_abort(struct i2c_adapter *adap)
{
 struct nforce2_smbus *smbus = adap->algo_data;
 int timeout = 0;
 unsigned char temp;

 dev_dbg(&adap->dev, "Aborting current transaction\n");

 outb_p(NVIDIA_SMB_CTRL_ABORT, NVIDIA_SMB_CTRL);
 do {
  msleep(1);
  temp = inb_p(NVIDIA_SMB_STATUS_ABRT);
 } while (!(temp & NVIDIA_SMB_STATUS_ABRT_STS) &&
   (timeout++ < MAX_TIMEOUT));
 if (!(temp & NVIDIA_SMB_STATUS_ABRT_STS))
  dev_err(&adap->dev, "Can't reset the smbus\n");
 outb_p(NVIDIA_SMB_STATUS_ABRT_STS, NVIDIA_SMB_STATUS_ABRT);
}

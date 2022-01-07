
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i2c_adapter {int dev; } ;
typedef int __le32 ;


 int CMD_GET_FUNC ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ le32_to_cpup (int *) ;
 int usb_read (struct i2c_adapter*,int ,int ,int ,int *,int) ;

__attribute__((used)) static u32 usb_func(struct i2c_adapter *adapter)
{
 __le32 *pfunc;
 u32 ret;

 pfunc = kmalloc(sizeof(*pfunc), GFP_KERNEL);


 if (!pfunc || usb_read(adapter, CMD_GET_FUNC, 0, 0, pfunc,
          sizeof(*pfunc)) != sizeof(*pfunc)) {
  dev_err(&adapter->dev, "failure reading functionality\n");
  ret = 0;
  goto out;
 }

 ret = le32_to_cpup(pfunc);
out:
 kfree(pfunc);
 return ret;
}

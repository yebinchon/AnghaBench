
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct bcm_iproc_i2c_dev {int device; } ;


 int bcm_iproc_i2c_xfer_single_msg (struct bcm_iproc_i2c_dev*,struct i2c_msg*) ;
 int dev_dbg (int ,char*) ;
 struct bcm_iproc_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int bcm_iproc_i2c_xfer(struct i2c_adapter *adapter,
         struct i2c_msg msgs[], int num)
{
 struct bcm_iproc_i2c_dev *iproc_i2c = i2c_get_adapdata(adapter);
 int ret, i;


 for (i = 0; i < num; i++) {
  ret = bcm_iproc_i2c_xfer_single_msg(iproc_i2c, &msgs[i]);
  if (ret) {
   dev_dbg(iproc_i2c->device, "xfer failed\n");
   return ret;
  }
 }

 return num;
}

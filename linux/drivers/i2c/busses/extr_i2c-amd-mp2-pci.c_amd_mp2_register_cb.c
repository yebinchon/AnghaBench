
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_mp2_dev {struct amd_i2c_common** busses; } ;
struct amd_i2c_common {int bus_id; struct amd_mp2_dev* mp2_dev; } ;


 int EINVAL ;
 int dev_err (int ,char*,size_t) ;
 int ndev_dev (struct amd_mp2_dev*) ;

int amd_mp2_register_cb(struct amd_i2c_common *i2c_common)
{
 struct amd_mp2_dev *privdata = i2c_common->mp2_dev;

 if (i2c_common->bus_id > 1)
  return -EINVAL;

 if (privdata->busses[i2c_common->bus_id]) {
  dev_err(ndev_dev(privdata),
   "Bus %d already taken!\n", i2c_common->bus_id);
  return -EINVAL;
 }

 privdata->busses[i2c_common->bus_id] = i2c_common;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_mp2_dev {int ** busses; } ;
struct amd_i2c_common {size_t bus_id; struct amd_mp2_dev* mp2_dev; } ;



int amd_mp2_unregister_cb(struct amd_i2c_common *i2c_common)
{
 struct amd_mp2_dev *privdata = i2c_common->mp2_dev;

 privdata->busses[i2c_common->bus_id] = ((void*)0);

 return 0;
}

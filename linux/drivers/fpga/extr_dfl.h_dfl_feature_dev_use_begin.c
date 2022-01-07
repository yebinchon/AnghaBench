
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_feature_platform_data {int dev_status; } ;


 int DEV_STATUS_IN_USE ;
 int EBUSY ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

__attribute__((used)) static inline
int dfl_feature_dev_use_begin(struct dfl_feature_platform_data *pdata)
{

 if (test_and_set_bit_lock(DEV_STATUS_IN_USE, &pdata->dev_status))
  return -EBUSY;

 return 0;
}

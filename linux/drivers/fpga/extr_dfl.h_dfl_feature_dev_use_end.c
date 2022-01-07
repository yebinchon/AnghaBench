
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_feature_platform_data {int dev_status; } ;


 int DEV_STATUS_IN_USE ;
 int clear_bit_unlock (int ,int *) ;

__attribute__((used)) static inline
void dfl_feature_dev_use_end(struct dfl_feature_platform_data *pdata)
{
 clear_bit_unlock(DEV_STATUS_IN_USE, &pdata->dev_status);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_feature_platform_data {void* private; } ;



__attribute__((used)) static inline
void *dfl_fpga_pdata_get_private(struct dfl_feature_platform_data *pdata)
{
 return pdata->private;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADS7846_FILTER_OK ;

__attribute__((used)) static int ads7846_no_filter(void *ads, int data_idx, int *val)
{
 return ADS7846_FILTER_OK;
}

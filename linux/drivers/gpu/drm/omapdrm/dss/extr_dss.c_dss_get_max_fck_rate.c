
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_device {TYPE_1__* feat; } ;
struct TYPE_2__ {unsigned long fck_freq_max; } ;



unsigned long dss_get_max_fck_rate(struct dss_device *dss)
{
 return dss->feat->fck_freq_max;
}

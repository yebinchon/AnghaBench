
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_chip_data {int flags; } ;


 int FLAGS_WORKAROUND_GICR_WAKER_MSM8996 ;

__attribute__((used)) static bool gic_enable_quirk_msm8996(void *data)
{
 struct gic_chip_data *d = data;

 d->flags |= FLAGS_WORKAROUND_GICR_WAKER_MSM8996;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gart_device {int savedata; } ;


 int do_gart_setup (struct gart_device*,int ) ;

int tegra_gart_resume(struct gart_device *gart)
{
 do_gart_setup(gart, gart->savedata);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_dmae_device {int shdma_dev; } ;


 int sh_dmae_ctl_stop (struct sh_dmae_device*) ;
 int sh_dmae_rst (struct sh_dmae_device*) ;
 int shdma_reset (int *) ;

__attribute__((used)) static bool sh_dmae_reset(struct sh_dmae_device *shdev)
{
 bool ret;


 sh_dmae_ctl_stop(shdev);


 ret = shdma_reset(&shdev->shdma_dev);

 sh_dmae_rst(shdev);

 return ret;
}

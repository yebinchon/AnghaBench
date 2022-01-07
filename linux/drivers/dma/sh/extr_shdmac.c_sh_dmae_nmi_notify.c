
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_dmae_device {int dummy; } ;


 int DMAOR_NMIF ;
 int dmaor_read (struct sh_dmae_device*) ;
 int sh_dmae_reset (struct sh_dmae_device*) ;

__attribute__((used)) static bool sh_dmae_nmi_notify(struct sh_dmae_device *shdev)
{

 if ((dmaor_read(shdev) & DMAOR_NMIF) == 0)
  return 0;

 return sh_dmae_reset(shdev);
}

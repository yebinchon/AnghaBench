
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_plane {int ipu_ch; int ipu; } ;


 int IPU_IRQ_EOF ;
 int ipu_idmac_channel_irq (int ,int ,int ) ;

int ipu_plane_irq(struct ipu_plane *ipu_plane)
{
 return ipu_idmac_channel_irq(ipu_plane->ipu, ipu_plane->ipu_ch,
         IPU_IRQ_EOF);
}

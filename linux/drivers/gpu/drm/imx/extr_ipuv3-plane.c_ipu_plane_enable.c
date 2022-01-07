
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_plane {scalar_t__ dp; int alpha_ch; int ipu_ch; int dmfc; int ipu; } ;


 int ipu_dmfc_enable_channel (int ) ;
 int ipu_dp_enable (int ) ;
 int ipu_dp_enable_channel (scalar_t__) ;
 int ipu_idmac_enable_channel (int ) ;
 scalar_t__ ipu_plane_separate_alpha (struct ipu_plane*) ;

__attribute__((used)) static void ipu_plane_enable(struct ipu_plane *ipu_plane)
{
 if (ipu_plane->dp)
  ipu_dp_enable(ipu_plane->ipu);
 ipu_dmfc_enable_channel(ipu_plane->dmfc);
 ipu_idmac_enable_channel(ipu_plane->ipu_ch);
 if (ipu_plane_separate_alpha(ipu_plane))
  ipu_idmac_enable_channel(ipu_plane->alpha_ch);
 if (ipu_plane->dp)
  ipu_dp_enable_channel(ipu_plane->dp);
}

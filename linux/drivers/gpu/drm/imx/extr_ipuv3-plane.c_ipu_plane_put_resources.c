
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_plane {int alpha_ch; int ipu_ch; int dmfc; int dp; } ;


 int IS_ERR_OR_NULL (int ) ;
 int ipu_dmfc_put (int ) ;
 int ipu_dp_put (int ) ;
 int ipu_idmac_put (int ) ;

void ipu_plane_put_resources(struct ipu_plane *ipu_plane)
{
 if (!IS_ERR_OR_NULL(ipu_plane->dp))
  ipu_dp_put(ipu_plane->dp);
 if (!IS_ERR_OR_NULL(ipu_plane->dmfc))
  ipu_dmfc_put(ipu_plane->dmfc);
 if (!IS_ERR_OR_NULL(ipu_plane->ipu_ch))
  ipu_idmac_put(ipu_plane->ipu_ch);
 if (!IS_ERR_OR_NULL(ipu_plane->alpha_ch))
  ipu_idmac_put(ipu_plane->alpha_ch);
}

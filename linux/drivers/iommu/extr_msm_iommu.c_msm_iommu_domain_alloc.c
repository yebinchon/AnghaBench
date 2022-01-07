
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long aperture_end; int force_aperture; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct msm_priv {struct iommu_domain domain; int list_attached; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 int kfree (struct msm_priv*) ;
 struct msm_priv* kzalloc (int,int ) ;

__attribute__((used)) static struct iommu_domain *msm_iommu_domain_alloc(unsigned type)
{
 struct msm_priv *priv;

 if (type != IOMMU_DOMAIN_UNMANAGED)
  return ((void*)0);

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  goto fail_nomem;

 INIT_LIST_HEAD(&priv->list_attached);

 priv->domain.geometry.aperture_start = 0;
 priv->domain.geometry.aperture_end = (1ULL << 32) - 1;
 priv->domain.geometry.force_aperture = 1;

 return &priv->domain;

fail_nomem:
 kfree(priv);
 return ((void*)0);
}

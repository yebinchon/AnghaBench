
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union shadow_sa_buf {int dummy; } shadow_sa_buf ;
typedef int u32 ;
struct sa_state_record {int dummy; } ;
struct pd_uinfo {scalar_t__ sr_pa; int * sr_va; int * sa_va; } ;
struct crypto4xx_device {scalar_t__ shadow_sr_pool_pa; int * shadow_sr_pool; TYPE_2__* shadow_sa_pool; scalar_t__ shadow_sa_pool_pa; struct pd_uinfo* pdr_uinfo; struct ce_pd* pdr; TYPE_1__* core_dev; scalar_t__ pdr_pa; } ;
struct ce_pd {scalar_t__ sa; } ;
struct TYPE_4__ {int sa; } ;
struct TYPE_3__ {int device; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int PPC4XX_NUM_PD ;
 void* dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int dma_free_coherent (int ,int,struct ce_pd*,scalar_t__) ;
 struct pd_uinfo* kcalloc (int,int,int ) ;

__attribute__((used)) static u32 crypto4xx_build_pdr(struct crypto4xx_device *dev)
{
 int i;
 dev->pdr = dma_alloc_coherent(dev->core_dev->device,
          sizeof(struct ce_pd) * PPC4XX_NUM_PD,
          &dev->pdr_pa, GFP_ATOMIC);
 if (!dev->pdr)
  return -ENOMEM;

 dev->pdr_uinfo = kcalloc(PPC4XX_NUM_PD, sizeof(struct pd_uinfo),
     GFP_KERNEL);
 if (!dev->pdr_uinfo) {
  dma_free_coherent(dev->core_dev->device,
      sizeof(struct ce_pd) * PPC4XX_NUM_PD,
      dev->pdr,
      dev->pdr_pa);
  return -ENOMEM;
 }
 dev->shadow_sa_pool = dma_alloc_coherent(dev->core_dev->device,
       sizeof(union shadow_sa_buf) * PPC4XX_NUM_PD,
       &dev->shadow_sa_pool_pa,
       GFP_ATOMIC);
 if (!dev->shadow_sa_pool)
  return -ENOMEM;

 dev->shadow_sr_pool = dma_alloc_coherent(dev->core_dev->device,
    sizeof(struct sa_state_record) * PPC4XX_NUM_PD,
    &dev->shadow_sr_pool_pa, GFP_ATOMIC);
 if (!dev->shadow_sr_pool)
  return -ENOMEM;
 for (i = 0; i < PPC4XX_NUM_PD; i++) {
  struct ce_pd *pd = &dev->pdr[i];
  struct pd_uinfo *pd_uinfo = &dev->pdr_uinfo[i];

  pd->sa = dev->shadow_sa_pool_pa +
   sizeof(union shadow_sa_buf) * i;


  pd_uinfo->sa_va = &dev->shadow_sa_pool[i].sa;


  pd_uinfo->sr_va = &dev->shadow_sr_pool[i];
  pd_uinfo->sr_pa = dev->shadow_sr_pool_pa +
      sizeof(struct sa_state_record) * i;
 }

 return 0;
}

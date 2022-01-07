
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {int* ttbr; int* mair; } ;
struct TYPE_6__ {TYPE_1__ arm_lpae_s1_cfg; } ;
struct ipmmu_vmsa_domain {TYPE_4__* mmu; TYPE_2__ cfg; } ;
struct TYPE_8__ {TYPE_3__* features; } ;
struct TYPE_7__ {scalar_t__ setup_imbuscr; scalar_t__ cache_snoop; scalar_t__ twobit_imttbcr_sl0; } ;


 int IMBUSCR ;
 int IMBUSCR_BUSSEL_MASK ;
 int IMBUSCR_DVM ;
 int IMCTR ;
 int IMCTR_FLUSH ;
 int IMCTR_INTEN ;
 int IMCTR_MMUEN ;
 int IMMAIR0 ;
 int IMSTR ;
 int IMTTBCR ;
 int IMTTBCR_EAE ;
 int IMTTBCR_IRGN0_WB_WA ;
 int IMTTBCR_ORGN0_WB_WA ;
 int IMTTBCR_SH0_INNER_SHAREABLE ;
 int IMTTBCR_SL0_LVL_1 ;
 int IMTTBCR_SL0_TWOBIT_LVL_1 ;
 int IMTTLBR0 ;
 int IMTTUBR0 ;
 int ipmmu_ctx_read_root (struct ipmmu_vmsa_domain*,int ) ;
 int ipmmu_ctx_write_all (struct ipmmu_vmsa_domain*,int ,int) ;
 int ipmmu_ctx_write_root (struct ipmmu_vmsa_domain*,int ,int) ;

__attribute__((used)) static void ipmmu_domain_setup_context(struct ipmmu_vmsa_domain *domain)
{
 u64 ttbr;
 u32 tmp;


 ttbr = domain->cfg.arm_lpae_s1_cfg.ttbr[0];
 ipmmu_ctx_write_root(domain, IMTTLBR0, ttbr);
 ipmmu_ctx_write_root(domain, IMTTUBR0, ttbr >> 32);






 if (domain->mmu->features->twobit_imttbcr_sl0)
  tmp = IMTTBCR_SL0_TWOBIT_LVL_1;
 else
  tmp = IMTTBCR_SL0_LVL_1;

 if (domain->mmu->features->cache_snoop)
  tmp |= IMTTBCR_SH0_INNER_SHAREABLE | IMTTBCR_ORGN0_WB_WA |
         IMTTBCR_IRGN0_WB_WA;

 ipmmu_ctx_write_root(domain, IMTTBCR, IMTTBCR_EAE | tmp);


 ipmmu_ctx_write_root(domain, IMMAIR0,
        domain->cfg.arm_lpae_s1_cfg.mair[0]);


 if (domain->mmu->features->setup_imbuscr)
  ipmmu_ctx_write_root(domain, IMBUSCR,
         ipmmu_ctx_read_root(domain, IMBUSCR) &
         ~(IMBUSCR_DVM | IMBUSCR_BUSSEL_MASK));





 ipmmu_ctx_write_root(domain, IMSTR, ipmmu_ctx_read_root(domain, IMSTR));
 ipmmu_ctx_write_all(domain, IMCTR,
       IMCTR_INTEN | IMCTR_FLUSH | IMCTR_MMUEN);
}

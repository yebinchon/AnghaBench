
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_cryp {int dev; int gcm_ctr; TYPE_1__* areq; } ;
struct TYPE_2__ {int iv; } ;


 int CRYP_CR ;
 int CR_CRYPEN ;
 int CR_PH_INIT ;
 int GCM_CTR_INIT ;
 int cpu_to_be32 (int ) ;
 int dev_err (int ,char*) ;
 int memcpy (int*,int ,int) ;
 int stm32_cryp_hw_write_iv (struct stm32_cryp*,int*) ;
 int stm32_cryp_wait_enable (struct stm32_cryp*) ;
 int stm32_cryp_write (struct stm32_cryp*,int ,int) ;

__attribute__((used)) static int stm32_cryp_gcm_init(struct stm32_cryp *cryp, u32 cfg)
{
 int ret;
 u32 iv[4];


 memcpy(iv, cryp->areq->iv, 12);
 iv[3] = cpu_to_be32(GCM_CTR_INIT);
 cryp->gcm_ctr = GCM_CTR_INIT;
 stm32_cryp_hw_write_iv(cryp, iv);

 stm32_cryp_write(cryp, CRYP_CR, cfg | CR_PH_INIT | CR_CRYPEN);


 ret = stm32_cryp_wait_enable(cryp);
 if (ret)
  dev_err(cryp->dev, "Timeout (gcm init)\n");

 return ret;
}

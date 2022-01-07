
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cryp_device_data {TYPE_1__* base; } ;
struct cryp_config {int keysize; int algodir; int algomode; } ;
struct TYPE_2__ {int cr; } ;


 int CRYP_ALGORITHM_DECRYPT ;
 int CRYP_ALGORITHM_ENCRYPT ;
 int CRYP_ALGO_AES_CBC ;
 int CRYP_ALGO_AES_ECB ;
 int CRYP_CRYPEN_ENABLE ;
 int CRYP_CR_ALGODIR_POS ;
 int CRYP_CR_ALGOMODE_POS ;
 int CRYP_CR_CRYPEN_POS ;
 int CRYP_CR_KEYSIZE_POS ;
 int CRYP_CR_KSE_POS ;
 int EINVAL ;
 int KSE_ENABLED ;
 int cryp_wait_until_done (struct cryp_device_data*) ;
 int writel_relaxed (int,int *) ;

int cryp_set_configuration(struct cryp_device_data *device_data,
      struct cryp_config *cryp_config,
      u32 *control_register)
{
 u32 cr_for_kse;

 if (((void*)0) == device_data || ((void*)0) == cryp_config)
  return -EINVAL;

 *control_register |= (cryp_config->keysize << CRYP_CR_KEYSIZE_POS);


 if ((CRYP_ALGORITHM_DECRYPT == cryp_config->algodir) &&
     ((CRYP_ALGO_AES_ECB == cryp_config->algomode) ||
      (CRYP_ALGO_AES_CBC == cryp_config->algomode))) {
  cr_for_kse = *control_register;
  cr_for_kse |= ((CRYP_ALGORITHM_ENCRYPT << CRYP_CR_ALGODIR_POS) |
          (CRYP_ALGO_AES_ECB << CRYP_CR_ALGOMODE_POS) |
          (CRYP_CRYPEN_ENABLE << CRYP_CR_CRYPEN_POS) |
          (KSE_ENABLED << CRYP_CR_KSE_POS));

  writel_relaxed(cr_for_kse, &device_data->base->cr);
  cryp_wait_until_done(device_data);
 }

 *control_register |=
  ((cryp_config->algomode << CRYP_CR_ALGOMODE_POS) |
   (cryp_config->algodir << CRYP_CR_ALGODIR_POS));

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cryp_protection_config {int privilege_access; scalar_t__ secure_access; } ;
struct cryp_device_data {TYPE_1__* base; } ;
struct TYPE_2__ {int cr; } ;


 int CRYP_CR_PRLG_MASK ;
 int CRYP_CR_PRLG_POS ;
 int CRYP_CR_SECURE_MASK ;
 int CRYP_PUT_BITS (int *,int ,int ,int ) ;
 int CRYP_WRITE_BIT (int *,int ,int ) ;
 int EINVAL ;

int cryp_configure_protection(struct cryp_device_data *device_data,
         struct cryp_protection_config *p_protect_config)
{
 if (((void*)0) == p_protect_config)
  return -EINVAL;

 CRYP_WRITE_BIT(&device_data->base->cr,
         (u32) p_protect_config->secure_access,
         CRYP_CR_SECURE_MASK);
 CRYP_PUT_BITS(&device_data->base->cr,
        p_protect_config->privilege_access,
        CRYP_CR_PRLG_POS,
        CRYP_CR_PRLG_MASK);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryp_device_data {TYPE_1__* base; } ;
typedef enum cryp_crypen { ____Placeholder_cryp_crypen } cryp_crypen ;
struct TYPE_2__ {int cr; } ;


 int CRYP_CR_CRYPEN_MASK ;
 int CRYP_CR_CRYPEN_POS ;
 int CRYP_PUT_BITS (int *,int,int ,int ) ;

void cryp_activity(struct cryp_device_data *device_data,
     enum cryp_crypen cryp_crypen)
{
 CRYP_PUT_BITS(&device_data->base->cr,
        cryp_crypen,
        CRYP_CR_CRYPEN_POS,
        CRYP_CR_CRYPEN_MASK);
}

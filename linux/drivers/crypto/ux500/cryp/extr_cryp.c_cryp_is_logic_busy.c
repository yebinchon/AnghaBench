
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryp_device_data {TYPE_1__* base; } ;
struct TYPE_2__ {int sr; } ;


 int CRYP_SR_BUSY_MASK ;
 int CRYP_TEST_BITS (int *,int ) ;

int cryp_is_logic_busy(struct cryp_device_data *device_data)
{
 return CRYP_TEST_BITS(&device_data->base->sr,
         CRYP_SR_BUSY_MASK);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryp_device_data {TYPE_1__* base; } ;
struct TYPE_2__ {int sr; int cr; } ;


 int CRYP_CRYPEN_DISABLE ;
 int CRYP_CR_FFLUSH_MASK ;
 int CRYP_SET_BITS (int *,int ) ;
 scalar_t__ CRYP_SR_INFIFO_READY_MASK ;
 int cpu_relax () ;
 int cryp_activity (struct cryp_device_data*,int ) ;
 int cryp_wait_until_done (struct cryp_device_data*) ;
 scalar_t__ readl_relaxed (int *) ;

void cryp_flush_inoutfifo(struct cryp_device_data *device_data)
{






 cryp_activity(device_data, CRYP_CRYPEN_DISABLE);
 cryp_wait_until_done(device_data);

 CRYP_SET_BITS(&device_data->base->cr, CRYP_CR_FFLUSH_MASK);





 while (readl_relaxed(&device_data->base->sr) !=
        CRYP_SR_INFIFO_READY_MASK)
  cpu_relax();
}

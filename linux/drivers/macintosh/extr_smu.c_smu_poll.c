
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int db_irq; int doorbell; } ;


 int PMAC_FTR_READ_GPIO ;
 int pmac_do_feature_call (int ,int *,int ) ;
 TYPE_1__* smu ;
 int smu_db_intr (int ,TYPE_1__*) ;

void smu_poll(void)
{
 u8 gpio;

 if (smu == ((void*)0))
  return;

 gpio = pmac_do_feature_call(PMAC_FTR_READ_GPIO, ((void*)0), smu->doorbell);
 if ((gpio & 7) == 7)
  smu_db_intr(smu->db_irq, smu);
}

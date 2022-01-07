
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cyapa {TYPE_1__* ops; scalar_t__ operational; int suspend_power_mode; int suspend_sleep_time; int state_sync_lock; int gen; int state; } ;
struct TYPE_8__ {int (* initialize ) (struct cyapa*) ;} ;
struct TYPE_7__ {int (* initialize ) (struct cyapa*) ;} ;
struct TYPE_6__ {int (* initialize ) (struct cyapa*) ;} ;
struct TYPE_5__ {int (* set_power_mode ) (struct cyapa*,int ,int ,int ) ;} ;


 int CYAPA_GEN_UNKNOWN ;
 int CYAPA_PM_ACTIVE ;
 int CYAPA_STATE_NO_DEVICE ;
 int PWR_MODE_OFF ;
 int PWR_MODE_SLEEP ;
 int cyapa_detect (struct cyapa*) ;
 TYPE_4__ cyapa_gen3_ops ;
 TYPE_3__ cyapa_gen5_ops ;
 TYPE_2__ cyapa_gen6_ops ;
 int cyapa_pwr_cmd_to_sleep_time (int ) ;
 int mutex_init (int *) ;
 int stub1 (struct cyapa*) ;
 int stub2 (struct cyapa*) ;
 int stub3 (struct cyapa*) ;
 int stub4 (struct cyapa*,int ,int ,int ) ;

__attribute__((used)) static int cyapa_initialize(struct cyapa *cyapa)
{
 int error = 0;

 cyapa->state = CYAPA_STATE_NO_DEVICE;
 cyapa->gen = CYAPA_GEN_UNKNOWN;
 mutex_init(&cyapa->state_sync_lock);





 cyapa->suspend_power_mode = PWR_MODE_SLEEP;
 cyapa->suspend_sleep_time =
  cyapa_pwr_cmd_to_sleep_time(cyapa->suspend_power_mode);


 error = cyapa_gen3_ops.initialize(cyapa);
 if (!error)
  error = cyapa_gen5_ops.initialize(cyapa);
 if (!error)
  error = cyapa_gen6_ops.initialize(cyapa);
 if (error)
  return error;

 error = cyapa_detect(cyapa);
 if (error)
  return error;


 if (cyapa->operational)
  cyapa->ops->set_power_mode(cyapa,
    PWR_MODE_OFF, 0, CYAPA_PM_ACTIVE);

 return 0;
}

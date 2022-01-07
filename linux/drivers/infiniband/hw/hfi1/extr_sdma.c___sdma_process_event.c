
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_state {size_t current_state; int go_s99_running; int last_event; } ;
struct sdma_engine {TYPE_1__* dd; int err_halt_worker; int sdma_sw_clean_up_task; struct sdma_state state; int this_idx; } ;
typedef enum sdma_events { ____Placeholder_sdma_events } sdma_events ;
struct TYPE_2__ {int sdma_unfreeze_wq; int sdma_unfreeze_count; } ;


 int atomic_dec (int *) ;
 int dd_dev_err (TYPE_1__*,char*,int ,int ,int ) ;
 int schedule_work (int *) ;
 int sdma_err_progress_check_schedule (struct sdma_engine*) ;
 int * sdma_event_names ;
 int sdma_get (struct sdma_state*) ;
 int sdma_hw_start_up (struct sdma_engine*) ;
 int sdma_make_progress (struct sdma_engine*,int ) ;
 int sdma_set_state (struct sdma_engine*,int const) ;
 int sdma_start_hw_clean_up (struct sdma_engine*) ;
 int * sdma_state_names ;
 int sdma_sw_tear_down (struct sdma_engine*) ;
 int tasklet_hi_schedule (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void __sdma_process_event(struct sdma_engine *sde,
     enum sdma_events event)
{
 struct sdma_state *ss = &sde->state;
 int need_progress = 0;
 switch (ss->current_state) {
 case 138:
  switch (event) {
  case 152:
   break;
  case 148:







   ss->go_s99_running = 1;

  case 151:

   sdma_get(&sde->state);
   sdma_set_state(sde,
           137);
   break;
  case 150:
   break;
  case 149:
   break;
  case 147:
   sdma_sw_tear_down(sde);
   break;
  case 146:
   break;
  case 145:
   break;
  case 144:
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   break;
  }
  break;

 case 137:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   sdma_sw_tear_down(sde);
   break;
  case 151:
   break;
  case 150:
   sdma_set_state(sde,
           136);
   sdma_start_hw_clean_up(sde);
   break;
  case 149:
   break;
  case 148:
   ss->go_s99_running = 1;
   break;
  case 147:
   break;
  case 146:
   break;
  case 145:
   schedule_work(&sde->err_halt_worker);
   break;
  case 144:
   ss->go_s99_running = 0;
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   break;
  }
  break;

 case 136:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   sdma_sw_tear_down(sde);
   break;
  case 151:
   break;
  case 150:
   break;
  case 149:
   sdma_hw_start_up(sde);
   sdma_set_state(sde, ss->go_s99_running ?
           128 :
           135);
   break;
  case 148:
   ss->go_s99_running = 1;
   break;
  case 147:
   break;
  case 146:
   break;
  case 145:
   break;
  case 144:
   ss->go_s99_running = 0;
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   break;
  }
  break;

 case 135:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   sdma_sw_tear_down(sde);
   break;
  case 151:
   break;
  case 150:
   break;
  case 149:
   break;
  case 148:
   sdma_set_state(sde, 128);
   ss->go_s99_running = 1;
   break;
  case 147:
   break;
  case 146:
   break;
  case 145:
   sdma_set_state(sde, 132);
   schedule_work(&sde->err_halt_worker);
   break;
  case 144:
   break;
  case 140:

  case 143:
   sdma_set_state(sde, 130);
   atomic_dec(&sde->dd->sdma_unfreeze_count);
   wake_up_interruptible(&sde->dd->sdma_unfreeze_wq);
   break;
  case 142:
   break;
  case 141:
   break;
  case 139:
   break;
  }
  break;

 case 134:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   break;
  case 151:
   break;
  case 150:
   break;
  case 149:
   break;
  case 148:
   ss->go_s99_running = 1;
   break;
  case 147:
   sdma_set_state(sde, 133);
   sdma_start_hw_clean_up(sde);
   break;
  case 146:
   break;
  case 145:
   break;
  case 144:
   ss->go_s99_running = 0;
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   break;
  case 140:
   ss->go_s99_running = 0;
   break;
  case 139:
   break;
  }
  break;

 case 133:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 151:
   break;
  case 150:
   break;
  case 149:
   sdma_hw_start_up(sde);
   sdma_set_state(sde, ss->go_s99_running ?
           128 :
           135);
   break;
  case 148:
   ss->go_s99_running = 1;
   break;
  case 147:
   break;
  case 146:
   break;
  case 145:
   break;
  case 144:
   ss->go_s99_running = 0;
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   break;
  case 140:
   ss->go_s99_running = 0;
   break;
  case 139:
   break;
  }
  break;

 case 132:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 151:
   break;
  case 150:
   sdma_set_state(sde, 134);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 149:
   break;
  case 148:
   ss->go_s99_running = 1;
   break;
  case 147:
   break;
  case 146:
   break;
  case 145:
   schedule_work(&sde->err_halt_worker);
   break;
  case 144:
   ss->go_s99_running = 0;
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   break;
  case 140:
   ss->go_s99_running = 0;
   break;
  case 139:
   break;
  }
  break;

 case 131:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 151:
   break;
  case 150:
   sdma_set_state(sde, 134);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 149:
   break;
  case 148:
   ss->go_s99_running = 1;
   break;
  case 147:
   break;
  case 146:
   break;
  case 145:
   schedule_work(&sde->err_halt_worker);
   break;
  case 144:
   ss->go_s99_running = 0;
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   break;
  }
  break;

 case 130:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 151:
   break;
  case 150:
   break;
  case 149:
   break;
  case 148:
   ss->go_s99_running = 1;
   break;
  case 147:
   break;
  case 146:
   break;
  case 145:
   break;
  case 144:
   ss->go_s99_running = 0;
   break;
  case 143:
   break;
  case 142:
   sdma_set_state(sde, 129);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   break;
  }
  break;

 case 129:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 151:
   break;
  case 150:
   break;
  case 149:
   break;
  case 148:
   ss->go_s99_running = 1;
   break;
  case 147:

   atomic_dec(&sde->dd->sdma_unfreeze_count);
   wake_up_interruptible(&sde->dd->sdma_unfreeze_wq);
   break;
  case 146:
   break;
  case 145:
   break;
  case 144:
   ss->go_s99_running = 0;
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   sdma_hw_start_up(sde);
   sdma_set_state(sde, ss->go_s99_running ?
           128 :
           135);
   break;
  case 140:
   break;
  case 139:
   break;
  }
  break;

 case 128:
  switch (event) {
  case 152:
   sdma_set_state(sde, 138);
   tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
   break;
  case 151:
   break;
  case 150:
   break;
  case 149:
   break;
  case 148:
   break;
  case 147:
   break;
  case 146:
   break;
  case 145:
   need_progress = 1;
   sdma_err_progress_check_schedule(sde);

  case 139:




   sdma_set_state(sde, 132);
   schedule_work(&sde->err_halt_worker);
   break;
  case 144:
   sdma_set_state(sde, 131);
   break;
  case 140:
   ss->go_s99_running = 0;

  case 143:
   sdma_set_state(sde, 130);
   atomic_dec(&sde->dd->sdma_unfreeze_count);
   wake_up_interruptible(&sde->dd->sdma_unfreeze_wq);
   break;
  case 142:
   break;
  case 141:
   break;
  }
  break;
 }

 ss->last_event = event;
 if (need_progress)
  sdma_make_progress(sde, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct mock_engine {int hw_lock; int hw_delay; } ;
struct TYPE_2__ {scalar_t__ delay; } ;
struct i915_request {TYPE_1__ mock; } ;


 int advance (struct i915_request*) ;
 struct mock_engine* engine ;
 struct i915_request* first_request (struct mock_engine*) ;
 struct mock_engine* from_timer (int ,struct timer_list*,int ) ;
 int hw_delay ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hw_delay_complete(struct timer_list *t)
{
 struct mock_engine *engine = from_timer(engine, t, hw_delay);
 struct i915_request *request;
 unsigned long flags;

 spin_lock_irqsave(&engine->hw_lock, flags);


 request = first_request(engine);
 if (request)
  advance(request);





 while ((request = first_request(engine))) {
  if (request->mock.delay) {
   mod_timer(&engine->hw_delay,
      jiffies + request->mock.delay);
   break;
  }

  advance(request);
 }

 spin_unlock_irqrestore(&engine->hw_lock, flags);
}

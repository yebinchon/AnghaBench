
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lineevent_state {int eflags; int wait; int events; int desc; scalar_t__ timestamp; } ;
struct gpioevent_data {void* id; scalar_t__ timestamp; } ;
typedef int irqreturn_t ;
typedef int ge ;


 int EPOLLIN ;
 void* GPIOEVENT_EVENT_FALLING_EDGE ;
 void* GPIOEVENT_EVENT_RISING_EDGE ;
 int GPIOEVENT_REQUEST_FALLING_EDGE ;
 int GPIOEVENT_REQUEST_RISING_EDGE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int gpiod_get_value_cansleep (int ) ;
 int kfifo_put (int *,struct gpioevent_data) ;
 scalar_t__ ktime_get_real_ns () ;
 int memset (struct gpioevent_data*,int ,int) ;
 int wake_up_poll (int *,int ) ;

__attribute__((used)) static irqreturn_t lineevent_irq_thread(int irq, void *p)
{
 struct lineevent_state *le = p;
 struct gpioevent_data ge;
 int ret;


 memset(&ge, 0, sizeof(ge));





 if (!le->timestamp)
  ge.timestamp = ktime_get_real_ns();
 else
  ge.timestamp = le->timestamp;

 if (le->eflags & GPIOEVENT_REQUEST_RISING_EDGE
     && le->eflags & GPIOEVENT_REQUEST_FALLING_EDGE) {
  int level = gpiod_get_value_cansleep(le->desc);
  if (level)

   ge.id = GPIOEVENT_EVENT_RISING_EDGE;
  else

   ge.id = GPIOEVENT_EVENT_FALLING_EDGE;
 } else if (le->eflags & GPIOEVENT_REQUEST_RISING_EDGE) {

  ge.id = GPIOEVENT_EVENT_RISING_EDGE;
 } else if (le->eflags & GPIOEVENT_REQUEST_FALLING_EDGE) {

  ge.id = GPIOEVENT_EVENT_FALLING_EDGE;
 } else {
  return IRQ_NONE;
 }

 ret = kfifo_put(&le->events, ge);
 if (ret)
  wake_up_poll(&le->wait, EPOLLIN);

 return IRQ_HANDLED;
}

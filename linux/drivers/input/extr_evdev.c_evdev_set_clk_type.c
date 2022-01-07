
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_client {int clk_type; scalar_t__ head; scalar_t__ tail; scalar_t__ packet_head; int buffer_lock; } ;
typedef enum input_clock_type { ____Placeholder_input_clock_type } input_clock_type ;





 int EINVAL ;
 int INPUT_CLK_BOOT ;
 int INPUT_CLK_MONO ;
 int INPUT_CLK_REAL ;
 int __evdev_queue_syn_dropped (struct evdev_client*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int evdev_set_clk_type(struct evdev_client *client, unsigned int clkid)
{
 unsigned long flags;
 enum input_clock_type clk_type;

 switch (clkid) {

 case 128:
  clk_type = INPUT_CLK_REAL;
  break;
 case 129:
  clk_type = INPUT_CLK_MONO;
  break;
 case 130:
  clk_type = INPUT_CLK_BOOT;
  break;
 default:
  return -EINVAL;
 }

 if (client->clk_type != clk_type) {
  client->clk_type = clk_type;





  spin_lock_irqsave(&client->buffer_lock, flags);

  if (client->head != client->tail) {
   client->packet_head = client->head = client->tail;
   __evdev_queue_syn_dropped(client);
  }

  spin_unlock_irqrestore(&client->buffer_lock, flags);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mip4_ts {TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 int mip4_clear_input (struct mip4_ts*) ;
 int mip4_power_off (struct mip4_ts*) ;

__attribute__((used)) static void mip4_disable(struct mip4_ts *ts)
{
 disable_irq(ts->client->irq);

 mip4_power_off(ts);

 mip4_clear_input(ts);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mip4_ts {TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int enable_irq (int ) ;
 int mip4_power_on (struct mip4_ts*) ;

__attribute__((used)) static int mip4_enable(struct mip4_ts *ts)
{
 int error;

 error = mip4_power_on(ts);
 if (error)
  return error;

 enable_irq(ts->client->irq);

 return 0;
}

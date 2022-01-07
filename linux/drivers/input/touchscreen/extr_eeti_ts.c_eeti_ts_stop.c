
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeti_ts {int running; TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 int wmb () ;

__attribute__((used)) static void eeti_ts_stop(struct eeti_ts *eeti)
{




 eeti->running = 0;
 wmb();
 disable_irq(eeti->client->irq);
}

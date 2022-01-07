
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zet6223_ts {TYPE_1__* client; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 struct zet6223_ts* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void zet6223_stop(struct input_dev *dev)
{
 struct zet6223_ts *ts = input_get_drvdata(dev);

 disable_irq(ts->client->irq);
}

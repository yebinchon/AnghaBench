
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsc2007 {int (* get_pendown_state ) (int *) ;TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int stub1 (int *) ;

bool tsc2007_is_pen_down(struct tsc2007 *ts)
{
 if (!ts->get_pendown_state)
  return 1;

 return ts->get_pendown_state(&ts->client->dev);
}

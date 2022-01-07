
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_target_port {int ch_count; TYPE_1__* ch; } ;
struct TYPE_2__ {scalar_t__ connected; } ;



__attribute__((used)) static int srp_connected_ch(struct srp_target_port *target)
{
 int i, c = 0;

 for (i = 0; i < target->ch_count; i++)
  c += target->ch[i].connected;

 return c;
}

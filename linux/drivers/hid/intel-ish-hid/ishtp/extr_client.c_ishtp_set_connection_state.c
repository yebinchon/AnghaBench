
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {int state; } ;



void ishtp_set_connection_state(struct ishtp_cl *cl, int state)
{
 cl->state = state;
}

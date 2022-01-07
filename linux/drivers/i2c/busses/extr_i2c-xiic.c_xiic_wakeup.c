
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xiic_i2c {int state; int wait; scalar_t__ nmsgs; int * rx_msg; int * tx_msg; } ;


 int wake_up (int *) ;

__attribute__((used)) static void xiic_wakeup(struct xiic_i2c *i2c, int code)
{
 i2c->tx_msg = ((void*)0);
 i2c->rx_msg = ((void*)0);
 i2c->nmsgs = 0;
 i2c->state = code;
 wake_up(&i2c->wait);
}

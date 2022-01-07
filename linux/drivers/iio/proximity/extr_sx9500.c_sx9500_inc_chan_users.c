
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int * channel_users; } ;


 int BIT (int) ;
 int SX9500_REG_PROX_CTRL0 ;
 int sx9500_inc_users (struct sx9500_data*,int *,int ,int ) ;

__attribute__((used)) static int sx9500_inc_chan_users(struct sx9500_data *data, int chan)
{
 return sx9500_inc_users(data, &data->channel_users[chan],
    SX9500_REG_PROX_CTRL0, BIT(chan));
}

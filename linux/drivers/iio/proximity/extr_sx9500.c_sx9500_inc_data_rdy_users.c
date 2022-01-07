
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int data_rdy_users; } ;


 int SX9500_CONVDONE_IRQ ;
 int SX9500_REG_IRQ_MSK ;
 int sx9500_inc_users (struct sx9500_data*,int *,int ,int ) ;

__attribute__((used)) static int sx9500_inc_data_rdy_users(struct sx9500_data *data)
{
 return sx9500_inc_users(data, &data->data_rdy_users,
    SX9500_REG_IRQ_MSK, SX9500_CONVDONE_IRQ);
}

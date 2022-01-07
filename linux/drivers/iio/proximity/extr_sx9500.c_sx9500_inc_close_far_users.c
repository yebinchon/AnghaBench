
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int close_far_users; } ;


 int SX9500_CLOSE_IRQ ;
 int SX9500_FAR_IRQ ;
 int SX9500_REG_IRQ_MSK ;
 int sx9500_inc_users (struct sx9500_data*,int *,int ,int) ;

__attribute__((used)) static int sx9500_inc_close_far_users(struct sx9500_data *data)
{
 return sx9500_inc_users(data, &data->close_far_users,
    SX9500_REG_IRQ_MSK,
    SX9500_CLOSE_IRQ | SX9500_FAR_IRQ);
}

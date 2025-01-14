
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm90_data {scalar_t__ kind; int config; } ;


 int lm90_update_confreg (struct lm90_data*,int) ;
 scalar_t__ max6696 ;

__attribute__((used)) static int lm90_select_remote_channel(struct lm90_data *data, int channel)
{
 int err = 0;

 if (data->kind == max6696) {
  u8 config = data->config & ~0x08;

  if (channel)
   config |= 0x08;
  err = lm90_update_confreg(data, config);
 }
 return err;
}

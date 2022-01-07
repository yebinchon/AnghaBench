
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si1145_data {int dummy; } ;


 int SI1145_CMD_PARAM_SET ;
 int si1145_param_update (struct si1145_data*,int ,int ,int ) ;

__attribute__((used)) static int si1145_param_set(struct si1145_data *data, u8 param, u8 value)
{
 return si1145_param_update(data, SI1145_CMD_PARAM_SET, param, value);
}

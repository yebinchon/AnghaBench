
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si1133_data {int dummy; } ;


 int SI1133_CMD_FORCE ;
 int si1133_command (struct si1133_data*,int ) ;

__attribute__((used)) static int si1133_force_measurement(struct si1133_data *data)
{
 return si1133_command(data, SI1133_CMD_FORCE);
}

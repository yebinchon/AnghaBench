
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mcp3021_data {int vdd; int output_res; } ;


 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static inline u16 volts_from_reg(struct mcp3021_data *data, u16 val)
{
 return DIV_ROUND_CLOSEST(data->vdd * val, 1 << data->output_res);
}

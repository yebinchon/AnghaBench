
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ina3221_data {int * fields; int reg_config; } ;


 size_t F_CVRF ;
 int ina3221_reg_to_interval_us (int ) ;
 int regmap_field_read_poll_timeout (int ,int,int,int,int) ;

__attribute__((used)) static inline int ina3221_wait_for_data(struct ina3221_data *ina)
{
 u32 wait, cvrf;

 wait = ina3221_reg_to_interval_us(ina->reg_config);


 return regmap_field_read_poll_timeout(ina->fields[F_CVRF],
           cvrf, cvrf, wait, wait * 2);
}

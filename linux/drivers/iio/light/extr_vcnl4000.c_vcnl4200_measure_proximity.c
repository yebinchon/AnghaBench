
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4000_data {int vcnl4200_ps; } ;


 int vcnl4200_measure (struct vcnl4000_data*,int *,int*) ;

__attribute__((used)) static int vcnl4200_measure_proximity(struct vcnl4000_data *data, int *val)
{
 return vcnl4200_measure(data, &data->vcnl4200_ps, val);
}

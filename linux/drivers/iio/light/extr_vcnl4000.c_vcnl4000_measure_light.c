
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4000_data {int dummy; } ;


 int VCNL4000_AL_OD ;
 int VCNL4000_AL_RDY ;
 int VCNL4000_AL_RESULT_HI ;
 int vcnl4000_measure (struct vcnl4000_data*,int ,int ,int ,int*) ;

__attribute__((used)) static int vcnl4000_measure_light(struct vcnl4000_data *data, int *val)
{
 return vcnl4000_measure(data,
   VCNL4000_AL_OD, VCNL4000_AL_RDY,
   VCNL4000_AL_RESULT_HI, val);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {int reg_vdd; } ;


 int IS_ERR (int ) ;
 int regulator_disable (int ) ;
 int udelay (int) ;
 int zforce_reset_assert (struct zforce_ts*) ;

__attribute__((used)) static void zforce_reset(void *data)
{
 struct zforce_ts *ts = data;

 zforce_reset_assert(ts);

 udelay(10);

 if (!IS_ERR(ts->reg_vdd))
  regulator_disable(ts->reg_vdd);
}

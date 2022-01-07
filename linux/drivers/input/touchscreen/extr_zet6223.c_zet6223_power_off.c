
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zet6223_ts {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void zet6223_power_off(void *_ts)
{
 struct zet6223_ts *ts = _ts;

 regulator_bulk_disable(ARRAY_SIZE(ts->supplies), ts->supplies);
}

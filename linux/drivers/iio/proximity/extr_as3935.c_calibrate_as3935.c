
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3935_state {int tune_cap; int nflwdth_reg; } ;


 int AS3935_CALIBRATE ;
 int AS3935_DEFAULTS ;
 int AS3935_NFLWDTH ;
 int AS3935_TUNE_CAP ;
 int BIT (int) ;
 int TUNE_CAP_DIV ;
 int as3935_write (struct as3935_state*,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void calibrate_as3935(struct as3935_state *st)
{
 as3935_write(st, AS3935_DEFAULTS, 0x96);
 as3935_write(st, AS3935_CALIBRATE, 0x96);
 as3935_write(st, AS3935_TUNE_CAP,
  BIT(5) | (st->tune_cap / TUNE_CAP_DIV));

 mdelay(2);
 as3935_write(st, AS3935_TUNE_CAP, (st->tune_cap / TUNE_CAP_DIV));
 as3935_write(st, AS3935_NFLWDTH, st->nflwdth_reg);
}

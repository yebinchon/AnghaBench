
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cyttsp {scalar_t__ act_intrvl; scalar_t__ tch_tmout; scalar_t__ lp_intrvl; } ;
typedef int intrvl_ray ;


 scalar_t__ CY_ACT_INTRVL_DFLT ;
 int CY_DELAY_DFLT ;
 scalar_t__ CY_LP_INTRVL_DFLT ;
 int CY_REG_ACT_INTRVL ;
 scalar_t__ CY_TCH_TMOUT_DFLT ;
 int msleep (int ) ;
 int ttsp_write_block_data (struct cyttsp*,int ,int,scalar_t__*) ;

__attribute__((used)) static int cyttsp_set_sysinfo_regs(struct cyttsp *ts)
{
 int retval = 0;

 if (ts->act_intrvl != CY_ACT_INTRVL_DFLT ||
     ts->tch_tmout != CY_TCH_TMOUT_DFLT ||
     ts->lp_intrvl != CY_LP_INTRVL_DFLT) {

  u8 intrvl_ray[] = {
   ts->act_intrvl,
   ts->tch_tmout,
   ts->lp_intrvl
  };


  retval = ttsp_write_block_data(ts, CY_REG_ACT_INTRVL,
     sizeof(intrvl_ray), intrvl_ray);
  msleep(CY_DELAY_DFLT);
 }

 return retval;
}

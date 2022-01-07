
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_internal {int dummy; } ;
typedef scalar_t__ s32 ;
typedef enum fe_stv0900_search_state { ____Placeholder_fe_stv0900_search_state } fe_stv0900_search_state ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int HEADER_MODE ;
 int LOCK_DEFINITIF ;




 int dprintk (char*,...) ;
 int msleep (int) ;
 void* stv0900_get_bits (struct stv0900_internal*,int ) ;

int stv0900_get_demod_lock(struct stv0900_internal *intp,
   enum fe_stv0900_demod_num demod, s32 time_out)
{
 s32 timer = 0,
  lock = 0;

 enum fe_stv0900_search_state dmd_state;

 while ((timer < time_out) && (lock == 0)) {
  dmd_state = stv0900_get_bits(intp, HEADER_MODE);
  dprintk("Demod State = %d\n", dmd_state);
  switch (dmd_state) {
  case 128:
  case 129:
  default:
   lock = 0;
   break;
  case 131:
  case 130:
   lock = stv0900_get_bits(intp, LOCK_DEFINITIF);
   break;
  }

  if (lock == 0)
   msleep(10);

  timer += 10;
 }

 if (lock)
  dprintk("DEMOD LOCK OK\n");
 else
  dprintk("DEMOD LOCK FAIL\n");

 return lock;
}

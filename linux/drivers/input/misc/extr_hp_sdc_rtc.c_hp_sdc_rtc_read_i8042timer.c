
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_4__ {int * semaphore; } ;
struct TYPE_5__ {int endidx; int* seq; TYPE_1__ act; } ;
typedef TYPE_2__ hp_sdc_transaction ;


 int HP_SDC_ACT_DATAIN ;
 int HP_SDC_ACT_POSTCMD ;
 int HP_SDC_ACT_PRECMD ;
 int HP_SDC_ACT_SEMAPHORE ;
 int HP_SDC_CMD_READ_T1 ;
 int HP_SDC_CMD_READ_T2 ;
 int HP_SDC_CMD_READ_T3 ;
 int HP_SDC_CMD_READ_T4 ;
 int HP_SDC_CMD_READ_T5 ;
 scalar_t__ WARN_ON (int ) ;
 int down_interruptible (int *) ;
 scalar_t__ hp_sdc_enqueue_transaction (TYPE_2__*) ;
 int i8042tregs ;
 int up (int *) ;

__attribute__((used)) static int64_t hp_sdc_rtc_read_i8042timer (uint8_t loadcmd, int numreg)
{
 hp_sdc_transaction t;
 uint8_t tseq[26] = {
  HP_SDC_ACT_PRECMD | HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN,
  0,
  HP_SDC_CMD_READ_T1, 2, 0, 0,
  HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN,
  HP_SDC_CMD_READ_T2, 2, 0, 0,
  HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN,
  HP_SDC_CMD_READ_T3, 2, 0, 0,
  HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN,
  HP_SDC_CMD_READ_T4, 2, 0, 0,
  HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN,
  HP_SDC_CMD_READ_T5, 2, 0, 0
 };

 t.endidx = numreg * 5;

 tseq[1] = loadcmd;
 tseq[t.endidx - 4] |= HP_SDC_ACT_SEMAPHORE;

 t.seq = tseq;
 t.act.semaphore = &i8042tregs;


 if (WARN_ON(down_interruptible(&i8042tregs)))
  return -1;

 if (hp_sdc_enqueue_transaction(&t)) {
  up(&i8042tregs);
  return -1;
 }


 if (WARN_ON(down_interruptible(&i8042tregs)))
  return -1;

 up(&i8042tregs);

 return (tseq[5] |
  ((uint64_t)(tseq[10]) << 8) | ((uint64_t)(tseq[15]) << 16) |
  ((uint64_t)(tseq[20]) << 24) | ((uint64_t)(tseq[25]) << 32));
}

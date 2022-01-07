
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct semaphore {int dummy; } ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_wday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_4__ {struct semaphore* semaphore; } ;
struct TYPE_5__ {int endidx; int* seq; TYPE_1__ act; } ;
typedef TYPE_2__ hp_sdc_transaction ;


 int HP_SDC_ACT_DATAIN ;
 int HP_SDC_ACT_DATAREG ;
 int HP_SDC_ACT_POSTCMD ;
 int HP_SDC_ACT_SEMAPHORE ;
 int HP_SDC_CMD_DO_RTCR ;
 scalar_t__ WARN_ON (int ) ;
 int down_interruptible (struct semaphore*) ;
 scalar_t__ hp_sdc_enqueue_transaction (TYPE_2__*) ;
 int memset (struct rtc_time*,int ,int) ;
 int sema_init (struct semaphore*,int ) ;

__attribute__((used)) static int hp_sdc_rtc_do_read_bbrtc (struct rtc_time *rtctm)
{
 struct semaphore tsem;
 hp_sdc_transaction t;
 uint8_t tseq[91];
 int i;

 i = 0;
 while (i < 91) {
  tseq[i++] = HP_SDC_ACT_DATAREG |
   HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN;
  tseq[i++] = 0x01;
    tseq[i] = i / 7;
  i++;
  tseq[i++] = HP_SDC_CMD_DO_RTCR;
  tseq[i++] = 2;
  i++; i++;
 }
 tseq[84] |= HP_SDC_ACT_SEMAPHORE;
 t.endidx = 91;
 t.seq = tseq;
 t.act.semaphore = &tsem;
 sema_init(&tsem, 0);

 if (hp_sdc_enqueue_transaction(&t)) return -1;


 if (WARN_ON(down_interruptible(&tsem)))
  return -1;


 if (!((tseq[83] | tseq[90] | tseq[69] | tseq[76] |
        tseq[55] | tseq[62] | tseq[34] | tseq[41] |
        tseq[20] | tseq[27] | tseq[6] | tseq[13]) & 0x0f))
  return -1;

 memset(rtctm, 0, sizeof(struct rtc_time));
 rtctm->tm_year = (tseq[83] & 0x0f) + (tseq[90] & 0x0f) * 10;
 rtctm->tm_mon = (tseq[69] & 0x0f) + (tseq[76] & 0x0f) * 10;
 rtctm->tm_mday = (tseq[55] & 0x0f) + (tseq[62] & 0x0f) * 10;
 rtctm->tm_wday = (tseq[48] & 0x0f);
 rtctm->tm_hour = (tseq[34] & 0x0f) + (tseq[41] & 0x0f) * 10;
 rtctm->tm_min = (tseq[20] & 0x0f) + (tseq[27] & 0x0f) * 10;
 rtctm->tm_sec = (tseq[6] & 0x0f) + (tseq[13] & 0x0f) * 10;

 return 0;
}

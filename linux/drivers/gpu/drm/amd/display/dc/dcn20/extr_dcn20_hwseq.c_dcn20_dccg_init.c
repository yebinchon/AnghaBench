
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;


 int DISPCLK_FREQ_CHANGE_CNTL ;
 int MICROSECOND_TIME_BASE_DIV ;
 int MILLISECOND_TIME_BASE_DIV ;
 int REG_WRITE (int ,int) ;

void dcn20_dccg_init(struct dce_hwseq *hws)
{







 REG_WRITE(MICROSECOND_TIME_BASE_DIV, 0x120264);
 REG_WRITE(MILLISECOND_TIME_BASE_DIV, 0x1186a0);


 REG_WRITE(DISPCLK_FREQ_CHANGE_CNTL, 0x801003c);
}

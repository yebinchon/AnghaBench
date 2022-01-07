
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;
struct dc {struct dce_hwseq* hwseq; } ;


 int AZALIA_AUDIO_DTO ;
 int AZALIA_AUDIO_DTO_MODULE ;
 int AZALIA_CONTROLLER_CLOCK_GATING ;
 int DCHUBBUB_GLOBAL_TIMER_CNTL ;
 int DCHUBBUB_GLOBAL_TIMER_ENABLE ;
 int DCHUBBUB_GLOBAL_TIMER_REFDIV ;
 int DC_MEM_GLOBAL_PWR_REQ_CNTL ;
 int DC_MEM_GLOBAL_PWR_REQ_DIS ;
 int RBBMIF_TIMEOUT_DIS ;
 int RBBMIF_TIMEOUT_DIS_2 ;
 int REFCLK_CNTL ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WRITE (int ,int) ;
 int dcn20_dccg_init (struct dce_hwseq*) ;

void dcn20_display_init(struct dc *dc)
{
 struct dce_hwseq *hws = dc->hwseq;





 REG_WRITE(RBBMIF_TIMEOUT_DIS, 0xFFFFFFFF);
 REG_WRITE(RBBMIF_TIMEOUT_DIS_2, 0xFFFFFFFF);


 dcn20_dccg_init(hws);

 REG_UPDATE(DC_MEM_GLOBAL_PWR_REQ_CNTL, DC_MEM_GLOBAL_PWR_REQ_DIS, 0);







 REG_UPDATE(DCHUBBUB_GLOBAL_TIMER_CNTL, DCHUBBUB_GLOBAL_TIMER_REFDIV, 2);
 REG_UPDATE(DCHUBBUB_GLOBAL_TIMER_CNTL, DCHUBBUB_GLOBAL_TIMER_ENABLE, 1);
 REG_WRITE(REFCLK_CNTL, 0);
 REG_UPDATE(AZALIA_AUDIO_DTO, AZALIA_AUDIO_DTO_MODULE, 0x64);

 REG_WRITE(AZALIA_CONTROLLER_CLOCK_GATING, 0x1);
}

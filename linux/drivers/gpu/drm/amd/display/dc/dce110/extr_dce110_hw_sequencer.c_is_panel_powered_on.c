
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_hwseq {int dummy; } ;


 int LVTMA_DIGON ;
 int LVTMA_DIGON_OVRD ;
 int LVTMA_PWRSEQ_CNTL ;
 int LVTMA_PWRSEQ_STATE ;
 int LVTMA_PWRSEQ_TARGET_STATE_R ;
 int REG_GET (int ,int ,int*) ;
 int REG_GET_2 (int ,int ,int*,int ,int*) ;

__attribute__((used)) static bool is_panel_powered_on(struct dce_hwseq *hws)
{
 uint32_t pwr_seq_state, dig_on, dig_on_ovrd;


 REG_GET(LVTMA_PWRSEQ_STATE, LVTMA_PWRSEQ_TARGET_STATE_R, &pwr_seq_state);

 REG_GET_2(LVTMA_PWRSEQ_CNTL, LVTMA_DIGON, &dig_on, LVTMA_DIGON_OVRD, &dig_on_ovrd);

 return (pwr_seq_state == 1) || (dig_on == 1 && dig_on_ovrd == 1);
}

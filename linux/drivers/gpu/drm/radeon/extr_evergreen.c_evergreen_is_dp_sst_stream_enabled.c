
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ NI_DCIO_UNIPHY0_PLL_CONTROL1 ;
 unsigned int NI_DCIO_UNIPHY0_PLL_CONTROL1_ENABLE ;
 scalar_t__ NI_DIG_BE_CNTL ;
 unsigned int NI_DIG_BE_CNTL_FE_SOURCE_SELECT (unsigned int) ;
 unsigned int NI_DIG_BE_DPSST ;
 scalar_t__ NI_DIG_BE_EN_CNTL ;
 unsigned int NI_DIG_BE_EN_CNTL_ENABLE ;
 unsigned int NI_DIG_BE_EN_CNTL_SYMBCLK_ON ;
 scalar_t__ NI_DIG_FE_CNTL ;
 unsigned int NI_DIG_FE_CNTL_MODE (unsigned int) ;
 unsigned int NI_DIG_FE_CNTL_SOURCE_SELECT (unsigned int) ;
 unsigned int NI_DIG_FE_CNTL_SYMCLK_FE_ON ;
 unsigned int RREG32 (scalar_t__) ;
 scalar_t__* ni_dig_offsets ;
 scalar_t__* ni_tx_offsets ;

__attribute__((used)) static bool evergreen_is_dp_sst_stream_enabled(struct radeon_device *rdev,
            unsigned crtc_id, unsigned *ret_dig_fe)
{
 unsigned i;
 unsigned dig_fe;
 unsigned dig_be;
 unsigned dig_en_be;
 unsigned uniphy_pll;
 unsigned digs_fe_selected;
 unsigned dig_be_mode;
 unsigned dig_fe_mask;
 bool is_enabled = 0;
 bool found_crtc = 0;


 for (i = 0; i < ARRAY_SIZE(ni_dig_offsets); i++) {
  dig_fe = RREG32(NI_DIG_FE_CNTL + ni_dig_offsets[i]);
  if (dig_fe & NI_DIG_FE_CNTL_SYMCLK_FE_ON &&
      crtc_id == NI_DIG_FE_CNTL_SOURCE_SELECT(dig_fe)) {

   found_crtc = 1;
   dig_fe_mask = 1 << i;
   dig_fe = i;
   break;
  }
 }

 if (found_crtc) {

  for (i = 0; i < ARRAY_SIZE(ni_dig_offsets); i++) {
   dig_be = RREG32(NI_DIG_BE_CNTL + ni_dig_offsets[i]);

   digs_fe_selected = NI_DIG_BE_CNTL_FE_SOURCE_SELECT(dig_be);
   dig_be_mode = NI_DIG_FE_CNTL_MODE(dig_be);
   if (dig_fe_mask & digs_fe_selected &&

       dig_be_mode == NI_DIG_BE_DPSST) {
    dig_en_be = RREG32(NI_DIG_BE_EN_CNTL +
         ni_dig_offsets[i]);
    uniphy_pll = RREG32(NI_DCIO_UNIPHY0_PLL_CONTROL1 +
          ni_tx_offsets[i]);

    if (dig_en_be & NI_DIG_BE_EN_CNTL_ENABLE &&
        dig_en_be & NI_DIG_BE_EN_CNTL_SYMBCLK_ON &&
        uniphy_pll & NI_DCIO_UNIPHY0_PLL_CONTROL1_ENABLE) {
     is_enabled = 1;
     *ret_dig_fe = dig_fe;
     break;
    }
   }
  }
 }

 return is_enabled;
}

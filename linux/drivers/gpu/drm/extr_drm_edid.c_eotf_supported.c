
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int u8 ;


 int const BIT (int ) ;
 int HDMI_EOTF_BT_2100_HLG ;
 int HDMI_EOTF_SMPTE_ST2084 ;
 int HDMI_EOTF_TRADITIONAL_GAMMA_HDR ;
 int HDMI_EOTF_TRADITIONAL_GAMMA_SDR ;

__attribute__((used)) static uint8_t eotf_supported(const u8 *edid_ext)
{
 return edid_ext[2] &
  (BIT(HDMI_EOTF_TRADITIONAL_GAMMA_SDR) |
   BIT(HDMI_EOTF_TRADITIONAL_GAMMA_HDR) |
   BIT(HDMI_EOTF_SMPTE_ST2084) |
   BIT(HDMI_EOTF_BT_2100_HLG));
}

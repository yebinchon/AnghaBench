
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int u8 ;


 int const BIT (int ) ;
 int HDMI_STATIC_METADATA_TYPE1 ;

__attribute__((used)) static uint8_t hdr_metadata_type(const u8 *edid_ext)
{
 return edid_ext[3] &
  BIT(HDMI_STATIC_METADATA_TYPE1);
}

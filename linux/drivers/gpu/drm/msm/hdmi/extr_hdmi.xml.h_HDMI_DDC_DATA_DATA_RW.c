
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum hdmi_ddc_read_write { ____Placeholder_hdmi_ddc_read_write } hdmi_ddc_read_write ;


 int HDMI_DDC_DATA_DATA_RW__MASK ;
 int HDMI_DDC_DATA_DATA_RW__SHIFT ;

__attribute__((used)) static inline uint32_t HDMI_DDC_DATA_DATA_RW(enum hdmi_ddc_read_write val)
{
 return ((val) << HDMI_DDC_DATA_DATA_RW__SHIFT) & HDMI_DDC_DATA_DATA_RW__MASK;
}

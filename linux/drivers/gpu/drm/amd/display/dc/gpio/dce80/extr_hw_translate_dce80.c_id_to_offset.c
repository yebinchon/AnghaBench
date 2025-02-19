
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gpio_pin_info {int mask; int mask_y; int mask_en; int mask_mask; void* offset; void* offset_mask; void* offset_en; void* offset_y; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;


 int BREAK_TO_DEBUGGER () ;
 int DC_GPIO_DDC6_A__DC_GPIO_DDC6CLK_A_MASK ;
 int DC_GPIO_DDC6_A__DC_GPIO_DDC6DATA_A_MASK ;
 int DC_GPIO_GENERIC_A__DC_GPIO_GENERICA_A_MASK ;
 int DC_GPIO_GENERIC_A__DC_GPIO_GENERICB_A_MASK ;
 int DC_GPIO_GENERIC_A__DC_GPIO_GENERICC_A_MASK ;
 int DC_GPIO_GENERIC_A__DC_GPIO_GENERICD_A_MASK ;
 int DC_GPIO_GENERIC_A__DC_GPIO_GENERICE_A_MASK ;
 int DC_GPIO_GENERIC_A__DC_GPIO_GENERICF_A_MASK ;
 int DC_GPIO_GENERIC_A__DC_GPIO_GENERICG_A_MASK ;
 int DC_GPIO_GENLK_A__DC_GPIO_GENLK_CLK_A_MASK ;
 int DC_GPIO_GENLK_A__DC_GPIO_GENLK_VSYNC_A_MASK ;
 int DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_A_A_MASK ;
 int DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_B_A_MASK ;
 int DC_GPIO_HPD_A__DC_GPIO_HPD1_A_MASK ;
 int DC_GPIO_HPD_A__DC_GPIO_HPD2_A_MASK ;
 int DC_GPIO_HPD_A__DC_GPIO_HPD3_A_MASK ;
 int DC_GPIO_HPD_A__DC_GPIO_HPD4_A_MASK ;
 int DC_GPIO_HPD_A__DC_GPIO_HPD5_A_MASK ;
 int DC_GPIO_HPD_A__DC_GPIO_HPD6_A_MASK ;
 int DC_GPIO_SYNCA_A__DC_GPIO_HSYNCA_A_MASK ;
 int DC_GPIO_SYNCA_A__DC_GPIO_VSYNCA_A_MASK ;
 int GPIO_GPIO_PAD_MAX ;
 void* mmDC_GPIO_DDC1_A ;
 void* mmDC_GPIO_DDC2_A ;
 void* mmDC_GPIO_DDC3_A ;
 void* mmDC_GPIO_DDC4_A ;
 void* mmDC_GPIO_DDC5_A ;
 void* mmDC_GPIO_DDC6_A ;
 void* mmDC_GPIO_DDCVGA_A ;
 void* mmDC_GPIO_GENERIC_A ;
 void* mmDC_GPIO_GENLK_A ;
 void* mmDC_GPIO_HPD_A ;
 void* mmDC_GPIO_I2CPAD_A ;
 void* mmDC_GPIO_SYNCA_A ;
 void* mmGPIOPAD_A ;

__attribute__((used)) static bool id_to_offset(
 enum gpio_id id,
 uint32_t en,
 struct gpio_pin_info *info)
{
 bool result = 1;

 switch (id) {
 case 138:
  info->mask = DC_GPIO_DDC6_A__DC_GPIO_DDC6DATA_A_MASK;
  switch (en) {
  case 164:
   info->offset = mmDC_GPIO_DDC1_A;
  break;
  case 163:
   info->offset = mmDC_GPIO_DDC2_A;
  break;
  case 162:
   info->offset = mmDC_GPIO_DDC3_A;
  break;
  case 161:
   info->offset = mmDC_GPIO_DDC4_A;
  break;
  case 160:
   info->offset = mmDC_GPIO_DDC5_A;
  break;
  case 159:
   info->offset = mmDC_GPIO_DDC6_A;
  break;
  case 158:
   info->offset = mmDC_GPIO_DDCVGA_A;
  break;
  case 157:
   info->offset = mmDC_GPIO_I2CPAD_A;
  break;
  default:
   BREAK_TO_DEBUGGER();
   result = 0;
  }
 break;
 case 139:
  info->mask = DC_GPIO_DDC6_A__DC_GPIO_DDC6CLK_A_MASK;
  switch (en) {
  case 164:
   info->offset = mmDC_GPIO_DDC1_A;
  break;
  case 163:
   info->offset = mmDC_GPIO_DDC2_A;
  break;
  case 162:
   info->offset = mmDC_GPIO_DDC3_A;
  break;
  case 161:
   info->offset = mmDC_GPIO_DDC4_A;
  break;
  case 160:
   info->offset = mmDC_GPIO_DDC5_A;
  break;
  case 159:
   info->offset = mmDC_GPIO_DDC6_A;
  break;
  case 158:
   info->offset = mmDC_GPIO_DDCVGA_A;
  break;
  case 157:
   info->offset = mmDC_GPIO_I2CPAD_A;
  break;
  default:
   BREAK_TO_DEBUGGER();
   result = 0;
  }
 break;
 case 137:
  info->offset = mmDC_GPIO_GENERIC_A;
  switch (en) {
  case 156:
   info->mask = DC_GPIO_GENERIC_A__DC_GPIO_GENERICA_A_MASK;
  break;
  case 155:
   info->mask = DC_GPIO_GENERIC_A__DC_GPIO_GENERICB_A_MASK;
  break;
  case 154:
   info->mask = DC_GPIO_GENERIC_A__DC_GPIO_GENERICC_A_MASK;
  break;
  case 153:
   info->mask = DC_GPIO_GENERIC_A__DC_GPIO_GENERICD_A_MASK;
  break;
  case 152:
   info->mask = DC_GPIO_GENERIC_A__DC_GPIO_GENERICE_A_MASK;
  break;
  case 151:
   info->mask = DC_GPIO_GENERIC_A__DC_GPIO_GENERICF_A_MASK;
  break;
  case 150:
   info->mask = DC_GPIO_GENERIC_A__DC_GPIO_GENERICG_A_MASK;
  break;
  default:
   BREAK_TO_DEBUGGER();
   result = 0;
  }
 break;
 case 134:
  info->offset = mmDC_GPIO_HPD_A;
  switch (en) {
  case 145:
   info->mask = DC_GPIO_HPD_A__DC_GPIO_HPD1_A_MASK;
  break;
  case 144:
   info->mask = DC_GPIO_HPD_A__DC_GPIO_HPD2_A_MASK;
  break;
  case 143:
   info->mask = DC_GPIO_HPD_A__DC_GPIO_HPD3_A_MASK;
  break;
  case 142:
   info->mask = DC_GPIO_HPD_A__DC_GPIO_HPD4_A_MASK;
  break;
  case 141:
   info->mask = DC_GPIO_HPD_A__DC_GPIO_HPD5_A_MASK;
  break;
  case 140:
   info->mask = DC_GPIO_HPD_A__DC_GPIO_HPD6_A_MASK;
  break;
  default:
   BREAK_TO_DEBUGGER();
   result = 0;
  }
 break;
 case 133:
  switch (en) {
  case 131:
   info->offset = mmDC_GPIO_SYNCA_A;
   info->mask = DC_GPIO_SYNCA_A__DC_GPIO_HSYNCA_A_MASK;
  break;
  case 129:
   info->offset = mmDC_GPIO_SYNCA_A;
   info->mask = DC_GPIO_SYNCA_A__DC_GPIO_VSYNCA_A_MASK;
  break;
  case 130:
  case 128:
  default:
   BREAK_TO_DEBUGGER();
   result = 0;
  }
 break;
 case 135:
  switch (en) {
  case 149:
   info->offset = mmDC_GPIO_GENLK_A;
   info->mask = DC_GPIO_GENLK_A__DC_GPIO_GENLK_CLK_A_MASK;
  break;
  case 148:
   info->offset = mmDC_GPIO_GENLK_A;
   info->mask =
    DC_GPIO_GENLK_A__DC_GPIO_GENLK_VSYNC_A_MASK;
  break;
  case 147:
   info->offset = mmDC_GPIO_GENLK_A;
   info->mask = DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_A_A_MASK;
  break;
  case 146:
   info->offset = mmDC_GPIO_GENLK_A;
   info->mask = DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_B_A_MASK;
  break;
  default:
   BREAK_TO_DEBUGGER();
   result = 0;
  }
 break;
 case 136:
  info->offset = mmGPIOPAD_A;
  info->mask = (1 << en);
  result = (info->mask <= GPIO_GPIO_PAD_MAX);
 break;
 case 132:
 default:
  BREAK_TO_DEBUGGER();
  result = 0;
 }

 if (result) {
  info->offset_y = info->offset + 2;
  info->offset_en = info->offset + 1;
  info->offset_mask = info->offset - 1;

  info->mask_y = info->mask;
  info->mask_en = info->mask;
  info->mask_mask = info->mask;
 }

 return result;
}

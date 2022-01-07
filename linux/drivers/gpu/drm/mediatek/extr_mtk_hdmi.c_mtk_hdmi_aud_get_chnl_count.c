
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum hdmi_aud_channel_type { ____Placeholder_hdmi_aud_channel_type } hdmi_aud_channel_type ;
__attribute__((used)) static u8 mtk_hdmi_aud_get_chnl_count(enum hdmi_aud_channel_type channel_type)
{
 switch (channel_type) {
 case 182:
 case 181:
 case 180:
  return 2;
 case 179:
 case 178:
  return 3;
 case 176:
 case 174:
 case 177:
  return 4;
 case 172:
 case 170:
 case 175:
 case 173:
  return 5;
 case 169:
 case 168:
 case 171:
 case 165:
 case 167:
 case 164:
 case 166:
  return 6;
 case 163:
 case 160:
 case 162:
 case 159:
 case 161:
 case 158:
 case 150:
 case 148:
 case 152:
 case 145:
 case 149:
 case 147:
 case 151:
 case 155:
 case 153:
 case 154:
 case 156:
 case 157:
 case 144:
 case 146:
 case 128:
  return 7;
 case 143:
 case 135:
 case 133:
 case 137:
 case 130:
 case 134:
 case 132:
 case 136:
 case 140:
 case 138:
 case 139:
 case 141:
 case 142:
 case 129:
 case 131:
  return 8;
 default:
  return 2;
 }
}

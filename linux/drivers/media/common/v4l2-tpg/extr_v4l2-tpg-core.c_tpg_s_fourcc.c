
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpg_data {int fourcc; int planes; int buffers; int recalc_colors; int interleaved; int* vdownsampling; int* hdownsampling; int* hmask; int* twopixelsize; void* color_enc; } ;


 void* TGP_COLOR_ENC_HSV ;
 void* TGP_COLOR_ENC_LUMA ;
 void* TGP_COLOR_ENC_RGB ;
 void* TGP_COLOR_ENC_YCBCR ;
bool tpg_s_fourcc(struct tpg_data *tpg, u32 fourcc)
{
 tpg->fourcc = fourcc;
 tpg->planes = 1;
 tpg->buffers = 1;
 tpg->recalc_colors = 1;
 tpg->interleaved = 0;
 tpg->vdownsampling[0] = 1;
 tpg->hdownsampling[0] = 1;
 tpg->hmask[0] = ~0;
 tpg->hmask[1] = ~0;
 tpg->hmask[2] = ~0;

 switch (fourcc) {
 case 172:
 case 168:
 case 164:
 case 160:
 case 175:
 case 171:
 case 167:
 case 163:
 case 174:
 case 170:
 case 166:
 case 162:
 case 173:
 case 169:
 case 165:
 case 161:
  tpg->interleaved = 1;
  tpg->vdownsampling[1] = 1;
  tpg->hdownsampling[1] = 1;
  tpg->planes = 2;

 case 187:
 case 183:
 case 182:
 case 186:
 case 151:
 case 215:
 case 177:
 case 180:
 case 154:
 case 218:
 case 204:
 case 207:
 case 185:
 case 150:
 case 214:
 case 176:
 case 179:
 case 153:
 case 217:
 case 203:
 case 206:
 case 184:
 case 149:
 case 213:
 case 209:
 case 189:
 case 211:
 case 188:
 case 210:
 case 152:
 case 155:
 case 216:
 case 219:
 case 178:
 case 205:
 case 181:
 case 208:
  tpg->color_enc = TGP_COLOR_ENC_RGB;
  break;
 case 202:
 case 147:
 case 146:
 case 145:
 case 144:
 case 128:
  tpg->color_enc = TGP_COLOR_ENC_LUMA;
  break;
 case 138:
 case 136:
 case 135:
 case 143:
 case 212:
 case 148:
 case 158:
 case 157:
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 141:
 case 132:
  tpg->buffers = 3;

 case 142:
 case 133:
  tpg->vdownsampling[1] = 2;
  tpg->vdownsampling[2] = 2;
  tpg->hdownsampling[1] = 2;
  tpg->hdownsampling[2] = 2;
  tpg->planes = 3;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 140:
 case 131:
  tpg->buffers = 3;

 case 139:
  tpg->vdownsampling[1] = 1;
  tpg->vdownsampling[2] = 1;
  tpg->hdownsampling[1] = 2;
  tpg->hdownsampling[2] = 2;
  tpg->planes = 3;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 196:
 case 190:
  tpg->buffers = 2;

 case 197:
 case 191:
  tpg->vdownsampling[1] = 1;
  tpg->hdownsampling[1] = 1;
  tpg->hmask[1] = ~1;
  tpg->planes = 2;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 198:
 case 194:
  tpg->buffers = 2;

 case 199:
 case 195:
  tpg->vdownsampling[1] = 2;
  tpg->hdownsampling[1] = 1;
  tpg->hmask[1] = ~1;
  tpg->planes = 2;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 137:
 case 130:
  tpg->buffers = 3;
  tpg->planes = 3;
  tpg->vdownsampling[1] = 1;
  tpg->vdownsampling[2] = 1;
  tpg->hdownsampling[1] = 1;
  tpg->hdownsampling[2] = 1;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 193:
 case 192:
  tpg->vdownsampling[1] = 1;
  tpg->hdownsampling[1] = 1;
  tpg->planes = 2;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 134:
 case 159:
 case 129:
 case 156:
  tpg->hmask[0] = ~1;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 201:
 case 200:
  tpg->color_enc = TGP_COLOR_ENC_HSV;
  break;
 default:
  return 0;
 }

 switch (fourcc) {
 case 202:
 case 187:
  tpg->twopixelsize[0] = 2;
  break;
 case 183:
 case 182:
 case 186:
 case 151:
 case 215:
 case 177:
 case 180:
 case 154:
 case 218:
 case 204:
 case 207:
 case 185:
 case 150:
 case 214:
 case 176:
 case 179:
 case 153:
 case 217:
 case 203:
 case 206:
 case 184:
 case 149:
 case 213:
 case 134:
 case 159:
 case 129:
 case 156:
 case 138:
 case 136:
 case 135:
 case 147:
 case 146:
 case 145:
 case 144:
 case 128:
  tpg->twopixelsize[0] = 2 * 2;
  break;
 case 189:
 case 211:
 case 201:
  tpg->twopixelsize[0] = 2 * 3;
  break;
 case 209:
 case 188:
 case 210:
 case 152:
 case 155:
 case 216:
 case 219:
 case 178:
 case 205:
 case 181:
 case 208:
 case 143:
 case 212:
 case 148:
 case 158:
 case 157:
 case 200:
  tpg->twopixelsize[0] = 2 * 4;
  break;
 case 199:
 case 195:
 case 198:
 case 194:
 case 197:
 case 191:
 case 196:
 case 190:
 case 172:
 case 168:
 case 164:
 case 160:
  tpg->twopixelsize[0] = 2;
  tpg->twopixelsize[1] = 2;
  break;
 case 163:
 case 167:
 case 171:
 case 175:
 case 162:
 case 166:
 case 170:
 case 174:
 case 161:
 case 165:
 case 169:
 case 173:
  tpg->twopixelsize[0] = 4;
  tpg->twopixelsize[1] = 4;
  break;
 case 137:
 case 130:
 case 140:
 case 131:
 case 139:
 case 142:
 case 133:
 case 141:
 case 132:
  tpg->twopixelsize[0] = 2;
  tpg->twopixelsize[1] = 2;
  tpg->twopixelsize[2] = 2;
  break;
 case 193:
 case 192:
  tpg->twopixelsize[0] = 2;
  tpg->twopixelsize[1] = 4;
  break;
 }
 return 1;
}

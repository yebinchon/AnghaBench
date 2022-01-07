
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u32 ;
struct atom_context {int reg_block; int io_mode; int* divmul; int data_block; int shift; int fb_base; int io_attr; int scratch_size_bytes; int* scratch; TYPE_2__* card; int * iio; } ;
struct TYPE_6__ {int* ws; int * ps; struct atom_context* ctx; } ;
typedef TYPE_1__ atom_exec_context ;
struct TYPE_7__ {int (* reg_read ) (TYPE_2__*,int) ;int (* pll_read ) (TYPE_2__*,int) ;int (* mc_read ) (TYPE_2__*,int) ;} ;
 int DEBUG (char*,int,...) ;
 int DRM_ERROR (char*,int,int) ;
 int U16 (int) ;
 int U32 (int) ;
 int U8 (int) ;
 int* atom_arg_mask ;
 int* atom_arg_shift ;
 int atom_iio_execute (struct atom_context*,int ,int,int ) ;
 int get_unaligned_le32 (int *) ;
 int pr_info (char*,...) ;
 int stub1 (TYPE_2__*,int) ;
 int stub2 (TYPE_2__*,int) ;
 int stub3 (TYPE_2__*,int) ;

__attribute__((used)) static uint32_t atom_get_src_int(atom_exec_context *ctx, uint8_t attr,
     int *ptr, uint32_t *saved, int print)
{
 uint32_t idx, val = 0xCDCDCDCD, align, arg;
 struct atom_context *gctx = ctx->ctx;
 arg = attr & 7;
 align = (attr >> 3) & 7;
 switch (arg) {
 case 149:
  idx = U16(*ptr);
  (*ptr) += 2;
  if (print)
   DEBUG("REG[0x%04X]", idx);
  idx += gctx->reg_block;
  switch (gctx->io_mode) {
  case 147:
   val = gctx->card->reg_read(gctx->card, idx);
   break;
  case 146:
   pr_info("PCI registers are not implemented\n");
   return 0;
  case 145:
   pr_info("SYSIO registers are not implemented\n");
   return 0;
  default:
   if (!(gctx->io_mode & 0x80)) {
    pr_info("Bad IO mode\n");
    return 0;
   }
   if (!gctx->iio[gctx->io_mode & 0x7F]) {
    pr_info("Undefined indirect IO read method %d\n",
     gctx->io_mode & 0x7F);
    return 0;
   }
   val =
       atom_iio_execute(gctx,
          gctx->iio[gctx->io_mode & 0x7F],
          idx, 0);
  }
  break;
 case 150:
  idx = U8(*ptr);
  (*ptr)++;


  val = get_unaligned_le32((u32 *)&ctx->ps[idx]);
  if (print)
   DEBUG("PS[0x%02X,0x%04X]", idx, val);
  break;
 case 148:
  idx = U8(*ptr);
  (*ptr)++;
  if (print)
   DEBUG("WS[0x%02X]", idx);
  switch (idx) {
  case 131:
   val = gctx->divmul[0];
   break;
  case 129:
   val = gctx->divmul[1];
   break;
  case 134:
   val = gctx->data_block;
   break;
  case 128:
   val = gctx->shift;
   break;
  case 132:
   val = 1 << gctx->shift;
   break;
  case 136:
   val = ~(1 << gctx->shift);
   break;
  case 133:
   val = gctx->fb_base;
   break;
  case 135:
   val = gctx->io_attr;
   break;
  case 130:
   val = gctx->reg_block;
   break;
  default:
   val = ctx->ws[idx];
  }
  break;
 case 154:
  idx = U16(*ptr);
  (*ptr) += 2;
  if (print) {
   if (gctx->data_block)
    DEBUG("ID[0x%04X+%04X]", idx, gctx->data_block);
   else
    DEBUG("ID[0x%04X]", idx);
  }
  val = U32(idx + gctx->data_block);
  break;
 case 155:
  idx = U8(*ptr);
  (*ptr)++;
  if ((gctx->fb_base + (idx * 4)) > gctx->scratch_size_bytes) {
   DRM_ERROR("ATOM: fb read beyond scratch region: %d vs. %d\n",
      gctx->fb_base + (idx * 4), gctx->scratch_size_bytes);
   val = 0;
  } else
   val = gctx->scratch[(gctx->fb_base / 4) + idx];
  if (print)
   DEBUG("FB[0x%02X]", idx);
  break;
 case 153:
  switch (align) {
  case 140:
   val = U32(*ptr);
   (*ptr) += 4;
   if (print)
    DEBUG("IMM 0x%08X\n", val);
   return val;
  case 139:
  case 137:
  case 138:
   val = U16(*ptr);
   (*ptr) += 2;
   if (print)
    DEBUG("IMM 0x%04X\n", val);
   return val;
  case 144:
  case 141:
  case 143:
  case 142:
   val = U8(*ptr);
   (*ptr)++;
   if (print)
    DEBUG("IMM 0x%02X\n", val);
   return val;
  }
  return 0;
 case 151:
  idx = U8(*ptr);
  (*ptr)++;
  if (print)
   DEBUG("PLL[0x%02X]", idx);
  val = gctx->card->pll_read(gctx->card, idx);
  break;
 case 152:
  idx = U8(*ptr);
  (*ptr)++;
  if (print)
   DEBUG("MC[0x%02X]", idx);
  val = gctx->card->mc_read(gctx->card, idx);
  break;
 }
 if (saved)
  *saved = val;
 val &= atom_arg_mask[align];
 val >>= atom_arg_shift[align];
 if (print)
  switch (align) {
  case 140:
   DEBUG(".[31:0] -> 0x%08X\n", val);
   break;
  case 139:
   DEBUG(".[15:0] -> 0x%04X\n", val);
   break;
  case 137:
   DEBUG(".[23:8] -> 0x%04X\n", val);
   break;
  case 138:
   DEBUG(".[31:16] -> 0x%04X\n", val);
   break;
  case 144:
   DEBUG(".[7:0] -> 0x%02X\n", val);
   break;
  case 141:
   DEBUG(".[15:8] -> 0x%02X\n", val);
   break;
  case 143:
   DEBUG(".[23:16] -> 0x%02X\n", val);
   break;
  case 142:
   DEBUG(".[31:24] -> 0x%02X\n", val);
   break;
  }
 return val;
}

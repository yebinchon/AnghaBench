
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct atom_context {size_t reg_block; int io_mode; size_t* divmul; size_t data_block; size_t shift; size_t fb_base; size_t io_attr; size_t scratch_size_bytes; size_t* scratch; TYPE_2__* card; int * iio; } ;
struct TYPE_7__ {size_t* ws; int * ps; struct atom_context* ctx; } ;
typedef TYPE_1__ atom_exec_context ;
struct TYPE_8__ {int (* mc_write ) (TYPE_2__*,size_t,size_t) ;int (* pll_write ) (TYPE_2__*,size_t,size_t) ;int (* reg_write ) (TYPE_2__*,size_t,size_t) ;} ;
 int DEBUG (char*,size_t) ;
 int DRM_ERROR (char*,size_t,size_t) ;
 size_t U16 (int) ;
 size_t U8 (int) ;
 size_t* atom_arg_mask ;
 size_t* atom_arg_shift ;
 size_t** atom_dst_to_src ;
 int atom_iio_execute (struct atom_context*,int ,size_t,size_t) ;
 int cpu_to_le32 (size_t) ;
 int pr_info (char*,...) ;
 int stub1 (TYPE_2__*,size_t,size_t) ;
 int stub2 (TYPE_2__*,size_t,size_t) ;
 int stub3 (TYPE_2__*,size_t,size_t) ;
 int stub4 (TYPE_2__*,size_t,size_t) ;

__attribute__((used)) static void atom_put_dst(atom_exec_context *ctx, int arg, uint8_t attr,
    int *ptr, uint32_t val, uint32_t saved)
{
 uint32_t align =
     atom_dst_to_src[(attr >> 3) & 7][(attr >> 6) & 3], old_val =
     val, idx;
 struct atom_context *gctx = ctx->ctx;
 old_val &= atom_arg_mask[align] >> atom_arg_shift[align];
 val <<= atom_arg_shift[align];
 val &= atom_arg_mask[align];
 saved &= ~atom_arg_mask[align];
 val |= saved;
 switch (arg) {
 case 149:
  idx = U16(*ptr);
  (*ptr) += 2;
  DEBUG("REG[0x%04X]", idx);
  idx += gctx->reg_block;
  switch (gctx->io_mode) {
  case 147:
   if (idx == 0)
    gctx->card->reg_write(gctx->card, idx,
            val << 2);
   else
    gctx->card->reg_write(gctx->card, idx, val);
   break;
  case 146:
   pr_info("PCI registers are not implemented\n");
   return;
  case 145:
   pr_info("SYSIO registers are not implemented\n");
   return;
  default:
   if (!(gctx->io_mode & 0x80)) {
    pr_info("Bad IO mode\n");
    return;
   }
   if (!gctx->iio[gctx->io_mode & 0xFF]) {
    pr_info("Undefined indirect IO write method %d\n",
     gctx->io_mode & 0x7F);
    return;
   }
   atom_iio_execute(gctx, gctx->iio[gctx->io_mode & 0xFF],
      idx, val);
  }
  break;
 case 150:
  idx = U8(*ptr);
  (*ptr)++;
  DEBUG("PS[0x%02X]", idx);
  ctx->ps[idx] = cpu_to_le32(val);
  break;
 case 148:
  idx = U8(*ptr);
  (*ptr)++;
  DEBUG("WS[0x%02X]", idx);
  switch (idx) {
  case 131:
   gctx->divmul[0] = val;
   break;
  case 129:
   gctx->divmul[1] = val;
   break;
  case 134:
   gctx->data_block = val;
   break;
  case 128:
   gctx->shift = val;
   break;
  case 132:
  case 136:
   break;
  case 133:
   gctx->fb_base = val;
   break;
  case 135:
   gctx->io_attr = val;
   break;
  case 130:
   gctx->reg_block = val;
   break;
  default:
   ctx->ws[idx] = val;
  }
  break;
 case 153:
  idx = U8(*ptr);
  (*ptr)++;
  if ((gctx->fb_base + (idx * 4)) > gctx->scratch_size_bytes) {
   DRM_ERROR("ATOM: fb write beyond scratch region: %d vs. %d\n",
      gctx->fb_base + (idx * 4), gctx->scratch_size_bytes);
  } else
   gctx->scratch[(gctx->fb_base / 4) + idx] = val;
  DEBUG("FB[0x%02X]", idx);
  break;
 case 151:
  idx = U8(*ptr);
  (*ptr)++;
  DEBUG("PLL[0x%02X]", idx);
  gctx->card->pll_write(gctx->card, idx, val);
  break;
 case 152:
  idx = U8(*ptr);
  (*ptr)++;
  DEBUG("MC[0x%02X]", idx);
  gctx->card->mc_write(gctx->card, idx, val);
  return;
 }
 switch (align) {
 case 140:
  DEBUG(".[31:0] <- 0x%08X\n", old_val);
  break;
 case 139:
  DEBUG(".[15:0] <- 0x%04X\n", old_val);
  break;
 case 137:
  DEBUG(".[23:8] <- 0x%04X\n", old_val);
  break;
 case 138:
  DEBUG(".[31:16] <- 0x%04X\n", old_val);
  break;
 case 144:
  DEBUG(".[7:0] <- 0x%02X\n", old_val);
  break;
 case 141:
  DEBUG(".[15:8] <- 0x%02X\n", old_val);
  break;
 case 143:
  DEBUG(".[23:16] <- 0x%02X\n", old_val);
  break;
 case 142:
  DEBUG(".[31:24] <- 0x%02X\n", old_val);
  break;
 }
}

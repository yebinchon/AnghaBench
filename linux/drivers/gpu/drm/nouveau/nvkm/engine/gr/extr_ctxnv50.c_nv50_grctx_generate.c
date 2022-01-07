
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {int ctxvals_base; int ctxvals_pos; } ;


 int ALWAYS ;
 int AUTO_LOAD ;
 int AUTO_SAVE ;
 int BUSY ;
 int CLEAR ;
 int CP_DISABLE1 ;
 int CP_DISABLE2 ;
 int CP_ENABLE ;
 int CP_END ;
 int CP_NEWCTX ;
 int CP_NEXT_TO_CURRENT ;
 int CP_NEXT_TO_SWAP ;
 int CP_SEEK_1 ;
 int CP_SET_XFER_POINTER ;
 int CP_XFER_1 ;
 int DISABLE ;
 int ENABLE ;
 int INTR ;
 int LOAD ;
 int NEWCTX ;
 int NOT_PENDING ;
 int PENDING ;
 int RUNNING ;
 int SAVE ;
 int SET ;
 int STATE ;
 int STATUS ;
 int STOPPED ;
 int SWAP_DIRECTION ;
 int TRUE ;
 int UNK01 ;
 int UNK03 ;
 int UNK0B ;
 int UNK1D ;
 int UNK20 ;
 int USER_LOAD ;
 int USER_SAVE ;
 int XFER ;
 int XFER_SWITCH ;
 int cp_bra (struct nvkm_grctx*,int ,int ,int ) ;
 int cp_check_load ;
 int cp_ctx (struct nvkm_grctx*,int,int) ;
 int cp_exit ;
 int cp_lsr (struct nvkm_grctx*,int) ;
 int cp_name (struct nvkm_grctx*,int ) ;
 int cp_out (struct nvkm_grctx*,int ) ;
 int cp_pos (struct nvkm_grctx*,int) ;
 int cp_prepare_exit ;
 int cp_set (struct nvkm_grctx*,int ,int ) ;
 int cp_setup_auto_load ;
 int cp_setup_load ;
 int cp_setup_save ;
 int cp_swap_state ;
 int cp_wait (struct nvkm_grctx*,int ,int ) ;
 int nv50_gr_construct_mmio (struct nvkm_grctx*) ;
 int nv50_gr_construct_xfer1 (struct nvkm_grctx*) ;
 int nv50_gr_construct_xfer2 (struct nvkm_grctx*) ;

__attribute__((used)) static int
nv50_grctx_generate(struct nvkm_grctx *ctx)
{
 cp_set (ctx, STATE, RUNNING);
 cp_set (ctx, XFER_SWITCH, ENABLE);

 cp_bra (ctx, AUTO_SAVE, PENDING, cp_setup_save);
 cp_bra (ctx, USER_SAVE, PENDING, cp_setup_save);

 cp_name(ctx, cp_check_load);
 cp_bra (ctx, AUTO_LOAD, PENDING, cp_setup_auto_load);
 cp_bra (ctx, USER_LOAD, PENDING, cp_setup_load);
 cp_bra (ctx, ALWAYS, TRUE, cp_prepare_exit);


 cp_name(ctx, cp_setup_auto_load);
 cp_out (ctx, CP_DISABLE1);
 cp_out (ctx, CP_DISABLE2);
 cp_out (ctx, CP_ENABLE);
 cp_out (ctx, CP_NEXT_TO_SWAP);
 cp_set (ctx, UNK01, SET);
 cp_name(ctx, cp_setup_load);
 cp_out (ctx, CP_NEWCTX);
 cp_wait(ctx, NEWCTX, BUSY);
 cp_set (ctx, UNK1D, CLEAR);
 cp_set (ctx, SWAP_DIRECTION, LOAD);
 cp_bra (ctx, UNK0B, SET, cp_prepare_exit);
 cp_bra (ctx, ALWAYS, TRUE, cp_swap_state);


 cp_name(ctx, cp_setup_save);
 cp_set (ctx, UNK1D, SET);
 cp_wait(ctx, STATUS, BUSY);
 cp_wait(ctx, INTR, PENDING);
 cp_bra (ctx, STATUS, BUSY, cp_setup_save);
 cp_set (ctx, UNK01, SET);
 cp_set (ctx, SWAP_DIRECTION, SAVE);


 cp_name(ctx, cp_swap_state);
 cp_set (ctx, UNK03, SET);
 cp_pos (ctx, 0x00004/4);
 cp_ctx (ctx, 0x400828, 1);
 cp_pos (ctx, 0x00100/4);
 nv50_gr_construct_mmio(ctx);
 nv50_gr_construct_xfer1(ctx);
 nv50_gr_construct_xfer2(ctx);

 cp_bra (ctx, SWAP_DIRECTION, SAVE, cp_check_load);

 cp_set (ctx, UNK20, SET);
 cp_set (ctx, SWAP_DIRECTION, SAVE);
 cp_lsr (ctx, ctx->ctxvals_base);
 cp_out (ctx, CP_SET_XFER_POINTER);
 cp_lsr (ctx, 4);
 cp_out (ctx, CP_SEEK_1);
 cp_out (ctx, CP_XFER_1);
 cp_wait(ctx, XFER, BUSY);


 cp_name(ctx, cp_prepare_exit);
 cp_set (ctx, UNK01, CLEAR);
 cp_set (ctx, UNK03, CLEAR);
 cp_set (ctx, UNK1D, CLEAR);

 cp_bra (ctx, USER_SAVE, PENDING, cp_exit);
 cp_out (ctx, CP_NEXT_TO_CURRENT);

 cp_name(ctx, cp_exit);
 cp_set (ctx, USER_SAVE, NOT_PENDING);
 cp_set (ctx, USER_LOAD, NOT_PENDING);
 cp_set (ctx, XFER_SWITCH, DISABLE);
 cp_set (ctx, STATE, STOPPED);
 cp_out (ctx, CP_END);
 ctx->ctxvals_pos += 0x400;

 return 0;
}

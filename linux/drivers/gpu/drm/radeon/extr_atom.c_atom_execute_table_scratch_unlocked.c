
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atom_context {int mutex; scalar_t__* divmul; int io_mode; scalar_t__ fb_base; scalar_t__ reg_block; scalar_t__ data_block; } ;


 int ATOM_IO_MM ;
 int atom_execute_table_locked (struct atom_context*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int atom_execute_table_scratch_unlocked(struct atom_context *ctx, int index, uint32_t * params)
{
 int r;

 mutex_lock(&ctx->mutex);

 ctx->data_block = 0;

 ctx->reg_block = 0;

 ctx->fb_base = 0;

 ctx->io_mode = ATOM_IO_MM;

 ctx->divmul[0] = 0;
 ctx->divmul[1] = 0;
 r = atom_execute_table_locked(ctx, index, params);
 mutex_unlock(&ctx->mutex);
 return r;
}

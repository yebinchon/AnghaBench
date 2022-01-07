
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atom_context {int scratch_mutex; } ;


 int atom_execute_table_scratch_unlocked (struct atom_context*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int atom_execute_table(struct atom_context *ctx, int index, uint32_t * params)
{
 int r;
 mutex_lock(&ctx->scratch_mutex);
 r = atom_execute_table_scratch_unlocked(ctx, index, params);
 mutex_unlock(&ctx->scratch_mutex);
 return r;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu_hw {scalar_t__ spu_type; } ;
struct TYPE_3__ {scalar_t__ alg; scalar_t__ mode; } ;
struct iproc_ctx_s {TYPE_1__ auth; } ;
struct TYPE_4__ {struct spu_hw spu; } ;


 scalar_t__ HASH_ALG_AES ;
 scalar_t__ HASH_MODE_XCBC ;
 scalar_t__ SPU_TYPE_SPU2 ;
 TYPE_2__ iproc_priv ;

__attribute__((used)) static bool spu_no_incr_hash(struct iproc_ctx_s *ctx)
{
 struct spu_hw *spu = &iproc_priv.spu;

 if (spu->spu_type == SPU_TYPE_SPU2)
  return 1;

 if ((ctx->auth.alg == HASH_ALG_AES) &&
     (ctx->auth.mode == HASH_MODE_XCBC))
  return 1;


 return 0;
}

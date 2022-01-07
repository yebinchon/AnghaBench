
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skcipher_request {int iv; } ;
struct TYPE_3__ {int iv; } ;
struct TYPE_4__ {TYPE_1__ blkcipher; } ;
struct mv_cesa_op_ctx {TYPE_2__ ctx; } ;


 int DES3_EDE_BLOCK_SIZE ;
 int memcpy (int ,int ,int ) ;
 int mv_cesa_des3_op (struct skcipher_request*,struct mv_cesa_op_ctx*) ;

__attribute__((used)) static int mv_cesa_cbc_des3_op(struct skcipher_request *req,
          struct mv_cesa_op_ctx *tmpl)
{
 memcpy(tmpl->ctx.blkcipher.iv, req->iv, DES3_EDE_BLOCK_SIZE);

 return mv_cesa_des3_op(req, tmpl);
}

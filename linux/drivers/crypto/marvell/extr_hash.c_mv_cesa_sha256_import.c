
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha256_state {int buf; int count; int state; } ;
struct ahash_request {int dummy; } ;


 int mv_cesa_ahash_import (struct ahash_request*,int ,int ,int ) ;

__attribute__((used)) static int mv_cesa_sha256_import(struct ahash_request *req, const void *in)
{
 const struct sha256_state *in_state = in;

 return mv_cesa_ahash_import(req, in_state->state, in_state->count,
        in_state->buf);
}

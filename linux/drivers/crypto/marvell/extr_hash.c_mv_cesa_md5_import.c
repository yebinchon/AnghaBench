
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_state {int block; int byte_count; int hash; } ;
struct ahash_request {int dummy; } ;


 int mv_cesa_ahash_import (struct ahash_request*,int ,int ,int ) ;

__attribute__((used)) static int mv_cesa_md5_import(struct ahash_request *req, const void *in)
{
 const struct md5_state *in_state = in;

 return mv_cesa_ahash_import(req, in_state->hash, in_state->byte_count,
        in_state->block);
}

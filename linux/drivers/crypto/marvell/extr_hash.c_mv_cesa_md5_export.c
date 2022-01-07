
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_state {int block; int byte_count; int hash; } ;
struct ahash_request {int dummy; } ;


 int mv_cesa_ahash_export (struct ahash_request*,int ,int *,int ) ;

__attribute__((used)) static int mv_cesa_md5_export(struct ahash_request *req, void *out)
{
 struct md5_state *out_state = out;

 return mv_cesa_ahash_export(req, out_state->hash,
        &out_state->byte_count, out_state->block);
}

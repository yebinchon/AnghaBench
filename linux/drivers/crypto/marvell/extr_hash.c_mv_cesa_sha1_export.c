
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha1_state {int buffer; int count; int state; } ;
struct ahash_request {int dummy; } ;


 int mv_cesa_ahash_export (struct ahash_request*,int ,int *,int ) ;

__attribute__((used)) static int mv_cesa_sha1_export(struct ahash_request *req, void *out)
{
 struct sha1_state *out_state = out;

 return mv_cesa_ahash_export(req, out_state->state, &out_state->count,
        out_state->buffer);
}

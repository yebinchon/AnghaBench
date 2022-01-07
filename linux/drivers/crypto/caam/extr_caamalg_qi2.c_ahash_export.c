
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct caam_hash_state {int buflen_1; int buflen_0; int finup; int final; int update; int * caam_ctx; int * buf_0; int * buf_1; scalar_t__ current_buf; } ;
struct caam_export_state {int buflen; int finup; int final; int update; int caam_ctx; int buf; } ;
struct ahash_request {int dummy; } ;


 struct caam_hash_state* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int ahash_export(struct ahash_request *req, void *out)
{
 struct caam_hash_state *state = ahash_request_ctx(req);
 struct caam_export_state *export = out;
 int len;
 u8 *buf;

 if (state->current_buf) {
  buf = state->buf_1;
  len = state->buflen_1;
 } else {
  buf = state->buf_0;
  len = state->buflen_0;
 }

 memcpy(export->buf, buf, len);
 memcpy(export->caam_ctx, state->caam_ctx, sizeof(export->caam_ctx));
 export->buflen = len;
 export->update = state->update;
 export->final = state->final;
 export->finup = state->finup;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_hash_state {int buflen_0; int finup; int final; int update; int caam_ctx; int buf_0; } ;
struct caam_export_state {int buflen; int finup; int final; int update; int caam_ctx; int buf; } ;
struct ahash_request {int dummy; } ;


 struct caam_hash_state* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct caam_hash_state*,int ,int) ;

__attribute__((used)) static int ahash_import(struct ahash_request *req, const void *in)
{
 struct caam_hash_state *state = ahash_request_ctx(req);
 const struct caam_export_state *export = in;

 memset(state, 0, sizeof(*state));
 memcpy(state->buf_0, export->buf, export->buflen);
 memcpy(state->caam_ctx, export->caam_ctx, sizeof(state->caam_ctx));
 state->buflen_0 = export->buflen;
 state->update = export->update;
 state->final = export->final;
 state->finup = export->finup;

 return 0;
}

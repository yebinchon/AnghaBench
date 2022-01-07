
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha256_state {int dummy; } ;


 int memcpy (void*,struct sha256_state*,int) ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int nx_sha256_export(struct shash_desc *desc, void *out)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);

 memcpy(out, sctx, sizeof(*sctx));

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha512_state {int dummy; } ;


 int memcpy (struct sha512_state*,void const*,int) ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int nx_sha512_import(struct shash_desc *desc, const void *in)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);

 memcpy(sctx, in, sizeof(*sctx));

 return 0;
}

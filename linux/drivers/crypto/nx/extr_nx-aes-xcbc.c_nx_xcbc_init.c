
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcbc_state {int dummy; } ;
struct shash_desc {int dummy; } ;


 int memset (struct xcbc_state*,int ,int) ;
 struct xcbc_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int nx_xcbc_init(struct shash_desc *desc)
{
 struct xcbc_state *sctx = shash_desc_ctx(desc);

 memset(sctx, 0, sizeof *sctx);

 return 0;
}

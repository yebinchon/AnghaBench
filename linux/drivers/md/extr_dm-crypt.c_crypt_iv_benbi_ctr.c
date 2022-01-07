
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_target {char* error; } ;
struct TYPE_3__ {int shift; } ;
struct TYPE_4__ {TYPE_1__ benbi; } ;
struct crypt_config {TYPE_2__ iv_gen_private; } ;


 int EINVAL ;
 int any_tfm (struct crypt_config*) ;
 unsigned int crypto_skcipher_blocksize (int ) ;
 int ilog2 (unsigned int) ;

__attribute__((used)) static int crypt_iv_benbi_ctr(struct crypt_config *cc, struct dm_target *ti,
         const char *opts)
{
 unsigned bs = crypto_skcipher_blocksize(any_tfm(cc));
 int log = ilog2(bs);




 if (1 << log != bs) {
  ti->error = "cypher blocksize is not a power of 2";
  return -EINVAL;
 }

 if (log > 9) {
  ti->error = "cypher blocksize is > 512";
  return -EINVAL;
 }

 cc->iv_gen_private.benbi.shift = 9 - log;

 return 0;
}

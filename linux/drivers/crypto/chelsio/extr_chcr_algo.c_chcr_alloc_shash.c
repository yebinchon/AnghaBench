
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_shash {int dummy; } ;


 int EINVAL ;
 struct crypto_shash* ERR_PTR (int ) ;





 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;

__attribute__((used)) static struct crypto_shash *chcr_alloc_shash(unsigned int ds)
{
 struct crypto_shash *base_hash = ERR_PTR(-EINVAL);

 switch (ds) {
 case 132:
  base_hash = crypto_alloc_shash("sha1", 0, 0);
  break;
 case 131:
  base_hash = crypto_alloc_shash("sha224", 0, 0);
  break;
 case 130:
  base_hash = crypto_alloc_shash("sha256", 0, 0);
  break;
 case 129:
  base_hash = crypto_alloc_shash("sha384", 0, 0);
  break;
 case 128:
  base_hash = crypto_alloc_shash("sha512", 0, 0);
  break;
 }

 return base_hash;
}

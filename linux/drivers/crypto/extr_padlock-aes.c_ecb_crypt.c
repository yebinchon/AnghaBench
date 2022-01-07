
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cword {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int ecb_crypt_copy (int const*,int *,int *,struct cword*,int) ;
 scalar_t__ ecb_fetch_bytes ;
 scalar_t__ offset_in_page (int const*) ;
 int rep_xcrypt_ecb (int const*,int *,int *,struct cword*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void ecb_crypt(const u8 *in, u8 *out, u32 *key,
        struct cword *cword, int count)
{



 if (unlikely(offset_in_page(in) + ecb_fetch_bytes > PAGE_SIZE)) {
  ecb_crypt_copy(in, out, key, cword, count);
  return;
 }

 rep_xcrypt_ecb(in, out, key, cword, count);
}

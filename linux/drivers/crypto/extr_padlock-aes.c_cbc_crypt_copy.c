
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cword {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int MAX_CBC_FETCH_BLOCKS ;
 int PADLOCK_ALIGNMENT ;
 int * PTR_ALIGN (int *,int) ;
 int memcpy (int *,int const*,int) ;
 int * rep_xcrypt_cbc (int *,int *,int *,int *,struct cword*,int) ;

__attribute__((used)) static u8 *cbc_crypt_copy(const u8 *in, u8 *out, u32 *key,
      u8 *iv, struct cword *cword, int count)
{




 u8 buf[AES_BLOCK_SIZE * (MAX_CBC_FETCH_BLOCKS - 1) + PADLOCK_ALIGNMENT - 1];
 u8 *tmp = PTR_ALIGN(&buf[0], PADLOCK_ALIGNMENT);

 memcpy(tmp, in, count * AES_BLOCK_SIZE);
 return rep_xcrypt_cbc(tmp, out, key, iv, cword, count);
}

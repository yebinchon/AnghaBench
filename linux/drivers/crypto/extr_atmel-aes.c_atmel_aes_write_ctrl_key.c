
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ has_dualbuff; } ;
struct atmel_aes_dev {int flags; TYPE_1__ caps; } ;


 int AES_FLAGS_MODE_MASK ;
 int AES_IVR (int ) ;
 int AES_KEYSIZE_128 ;
 int AES_KEYSIZE_192 ;
 int AES_KEYWR (int ) ;
 int AES_MR ;
 int AES_MR_DUALBUFF ;
 int AES_MR_KEYSIZE_128 ;
 int AES_MR_KEYSIZE_192 ;
 int AES_MR_KEYSIZE_256 ;
 int AES_MR_OPMOD_ECB ;
 int AES_MR_OPMOD_MASK ;
 int AES_MR_SMOD_AUTO ;
 int AES_MR_SMOD_IDATAR0 ;
 int SIZE_IN_WORDS (int) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,int const*) ;
 int atmel_aes_write_n (struct atmel_aes_dev*,int ,int const*,int ) ;

__attribute__((used)) static void atmel_aes_write_ctrl_key(struct atmel_aes_dev *dd, bool use_dma,
         const u32 *iv, const u32 *key, int keylen)
{
 u32 valmr = 0;


 if (keylen == AES_KEYSIZE_128)
  valmr |= AES_MR_KEYSIZE_128;
 else if (keylen == AES_KEYSIZE_192)
  valmr |= AES_MR_KEYSIZE_192;
 else
  valmr |= AES_MR_KEYSIZE_256;

 valmr |= dd->flags & AES_FLAGS_MODE_MASK;

 if (use_dma) {
  valmr |= AES_MR_SMOD_IDATAR0;
  if (dd->caps.has_dualbuff)
   valmr |= AES_MR_DUALBUFF;
 } else {
  valmr |= AES_MR_SMOD_AUTO;
 }

 atmel_aes_write(dd, AES_MR, valmr);

 atmel_aes_write_n(dd, AES_KEYWR(0), key, SIZE_IN_WORDS(keylen));

 if (iv && (valmr & AES_MR_OPMOD_MASK) != AES_MR_OPMOD_ECB)
  atmel_aes_write_block(dd, AES_IVR(0), iv);
}

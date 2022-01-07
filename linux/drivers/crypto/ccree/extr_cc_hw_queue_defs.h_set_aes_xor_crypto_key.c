
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int * word; } ;


 int FIELD_PREP (int ,int) ;
 int WORD4_AES_XOR_CRYPTO_KEY ;

__attribute__((used)) static inline void set_aes_xor_crypto_key(struct cc_hw_desc *pdesc)
{
 pdesc->word[4] |= FIELD_PREP(WORD4_AES_XOR_CRYPTO_KEY, 1);
}

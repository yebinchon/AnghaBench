
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int* word; } ;
typedef enum cc_hw_crypto_key { ____Placeholder_cc_hw_crypto_key } cc_hw_crypto_key ;


 int FIELD_PREP (int ,int) ;
 int HW_KEY_MASK_CIPHER_DO ;
 int HW_KEY_SHIFT_CIPHER_CFG2 ;
 int WORD4_CIPHER_CONF2 ;
 int WORD4_CIPHER_DO ;

__attribute__((used)) static inline void set_hw_crypto_key(struct cc_hw_desc *pdesc,
         enum cc_hw_crypto_key hw_key)
{
 pdesc->word[4] |= FIELD_PREP(WORD4_CIPHER_DO,
         (hw_key & HW_KEY_MASK_CIPHER_DO)) |
   FIELD_PREP(WORD4_CIPHER_CONF2,
       (hw_key >> HW_KEY_SHIFT_CIPHER_CFG2));
}

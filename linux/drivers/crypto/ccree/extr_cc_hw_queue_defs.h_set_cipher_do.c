
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int * word; } ;
typedef enum cc_hash_cipher_pad { ____Placeholder_cc_hash_cipher_pad } cc_hash_cipher_pad ;


 int FIELD_PREP (int ,int) ;
 int HW_KEY_MASK_CIPHER_DO ;
 int WORD4_CIPHER_DO ;

__attribute__((used)) static inline void set_cipher_do(struct cc_hw_desc *pdesc,
     enum cc_hash_cipher_pad config)
{
 pdesc->word[4] |= FIELD_PREP(WORD4_CIPHER_DO,
    (config & HW_KEY_MASK_CIPHER_DO));
}

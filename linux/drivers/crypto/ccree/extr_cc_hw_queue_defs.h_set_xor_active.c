
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int * word; } ;


 int FIELD_PREP (int ,int) ;
 int WORD3_HASH_XOR_BIT ;

__attribute__((used)) static inline void set_xor_active(struct cc_hw_desc *pdesc)
{
 pdesc->word[3] |= FIELD_PREP(WORD3_HASH_XOR_BIT, 1);
}

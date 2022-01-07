
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cc_hw_desc {int * word; } ;


 int CC_CPP_DIN_ADDR ;
 int CC_CPP_DIN_SIZE ;
 int FIELD_PREP (int ,int) ;
 int WORD1_DIN_SIZE ;
 int WORD1_LOCK_QUEUE ;
 int WORD4_SETUP_OPERATION ;

__attribute__((used)) static inline void set_cpp_crypto_key(struct cc_hw_desc *pdesc, u8 slot)
{
 pdesc->word[0] |= CC_CPP_DIN_ADDR;

 pdesc->word[1] |= FIELD_PREP(WORD1_DIN_SIZE, CC_CPP_DIN_SIZE);
 pdesc->word[1] |= FIELD_PREP(WORD1_LOCK_QUEUE, 1);

 pdesc->word[4] |= FIELD_PREP(WORD4_SETUP_OPERATION, slot);
}

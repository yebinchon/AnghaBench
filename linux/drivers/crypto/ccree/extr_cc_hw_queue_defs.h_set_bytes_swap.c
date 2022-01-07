
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int * word; } ;


 int FIELD_PREP (int ,int) ;
 int WORD4_BYTES_SWAP ;

__attribute__((used)) static inline void set_bytes_swap(struct cc_hw_desc *pdesc, bool config)
{
 pdesc->word[4] |= FIELD_PREP(WORD4_BYTES_SWAP, config);
}

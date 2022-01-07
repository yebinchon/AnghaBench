
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_hw_desc {int * word; } ;


 int FIELD_PREP (int ,int ) ;
 int WORD4_KEY_SIZE ;

__attribute__((used)) static inline void set_key_size(struct cc_hw_desc *pdesc, u32 size)
{
 pdesc->word[4] |= FIELD_PREP(WORD4_KEY_SIZE, size);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int * word; } ;


 int FIELD_PREP (int ,int) ;
 int WORD1_NOT_LAST ;

__attribute__((used)) static inline void set_din_not_last_indication(struct cc_hw_desc *pdesc)
{
 pdesc->word[1] |= FIELD_PREP(WORD1_NOT_LAST, 1);
}

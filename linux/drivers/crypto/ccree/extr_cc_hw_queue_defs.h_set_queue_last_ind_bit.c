
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int * word; } ;


 int FIELD_PREP (int ,int) ;
 int WORD3_QUEUE_LAST_IND ;

__attribute__((used)) static inline void set_queue_last_ind_bit(struct cc_hw_desc *pdesc)
{
 pdesc->word[3] |= FIELD_PREP(WORD3_QUEUE_LAST_IND, 1);
}

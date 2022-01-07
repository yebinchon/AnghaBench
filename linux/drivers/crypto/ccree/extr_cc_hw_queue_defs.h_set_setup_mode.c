
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int * word; } ;
typedef enum cc_setup_op { ____Placeholder_cc_setup_op } cc_setup_op ;


 int FIELD_PREP (int ,int) ;
 int WORD4_SETUP_OPERATION ;

__attribute__((used)) static inline void set_setup_mode(struct cc_hw_desc *pdesc,
      enum cc_setup_op mode)
{
 pdesc->word[4] |= FIELD_PREP(WORD4_SETUP_OPERATION, mode);
}

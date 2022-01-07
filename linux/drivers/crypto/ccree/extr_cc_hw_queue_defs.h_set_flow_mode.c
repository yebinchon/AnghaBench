
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int * word; } ;
typedef enum cc_flow_mode { ____Placeholder_cc_flow_mode } cc_flow_mode ;


 int FIELD_PREP (int ,int) ;
 int WORD4_DATA_FLOW_MODE ;

__attribute__((used)) static inline void set_flow_mode(struct cc_hw_desc *pdesc,
     enum cc_flow_mode mode)
{
 pdesc->word[4] |= FIELD_PREP(WORD4_DATA_FLOW_MODE, mode);
}

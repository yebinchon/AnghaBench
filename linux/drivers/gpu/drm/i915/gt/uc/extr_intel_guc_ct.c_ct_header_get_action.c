
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int GUC_CT_MSG_ACTION_MASK ;
 unsigned int GUC_CT_MSG_ACTION_SHIFT ;

__attribute__((used)) static inline unsigned int ct_header_get_action(u32 header)
{
 return (header >> GUC_CT_MSG_ACTION_SHIFT) & GUC_CT_MSG_ACTION_MASK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GUC_CT_MSG_IS_RESPONSE ;

__attribute__((used)) static inline bool ct_header_is_response(u32 header)
{
 return !!(header & GUC_CT_MSG_IS_RESPONSE);
}

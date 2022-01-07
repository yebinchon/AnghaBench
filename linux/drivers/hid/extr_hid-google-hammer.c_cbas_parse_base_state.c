
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int ) ;
 int EC_MKBP_BASE_ATTACHED ;
 int get_unaligned_le32 (void const*) ;

__attribute__((used)) static bool cbas_parse_base_state(const void *data)
{
 u32 switches = get_unaligned_le32(data);

 return !!(switches & BIT(EC_MKBP_BASE_ATTACHED));
}

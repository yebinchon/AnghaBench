
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct link_bits TYPE_1__ ;


typedef int u16 ;
struct link_bits {int from; int to; } ;


 int ARRAY_SIZE (TYPE_1__ const*) ;





__attribute__((used)) static u16 opa_to_vc_link_widths(u16 opa_widths)
{
 int i;
 u16 result = 0;

 static const struct link_bits {
  u16 from;
  u16 to;
 } opa_link_xlate[] = {
  { 131, 1 << (1 - 1) },
  { 130, 1 << (2 - 1) },
  { 129, 1 << (3 - 1) },
  { 128, 1 << (4 - 1) },
 };

 for (i = 0; i < ARRAY_SIZE(opa_link_xlate); i++) {
  if (opa_widths & opa_link_xlate[i].from)
   result |= opa_link_xlate[i].to;
 }
 return result;
}

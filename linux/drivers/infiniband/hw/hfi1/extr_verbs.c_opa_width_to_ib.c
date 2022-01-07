
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int IB_WIDTH_1X ;
 int IB_WIDTH_4X ;





__attribute__((used)) static inline u16 opa_width_to_ib(u16 in)
{
 switch (in) {
 case 131:

 case 130:
 case 129:
  return IB_WIDTH_1X;
 default:
 case 128:
  return IB_WIDTH_4X;
 }
}

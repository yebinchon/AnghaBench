
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int PCI_EXP_LNKSTA_CLS ;




__attribute__((used)) static u32 extract_speed(u16 linkstat)
{
 u32 speed;

 switch (linkstat & PCI_EXP_LNKSTA_CLS) {
 default:
 case 130:
  speed = 2500;
  break;
 case 129:
  speed = 5000;
  break;
 case 128:
  speed = 8000;
  break;
 }
 return speed;
}

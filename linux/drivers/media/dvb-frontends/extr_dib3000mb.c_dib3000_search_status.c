
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int deb_srch (char*) ;

__attribute__((used)) static int dib3000_search_status(u16 irq,u16 lock)
{
 if (irq & 0x02) {
  if (lock & 0x01) {
   deb_srch("auto search succeeded\n");
   return 1;
  } else {
   deb_srch("auto search not successful\n");
   return 0;
  }
 } else if (irq & 0x01) {
  deb_srch("auto search failed\n");
  return 0;
 }
 return -1;
}

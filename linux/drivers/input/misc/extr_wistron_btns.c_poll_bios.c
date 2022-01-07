
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ CMOS_READ (int ) ;
 scalar_t__ bios_pop_queue () ;
 int cmos_address ;
 int handle_key (scalar_t__) ;

__attribute__((used)) static void poll_bios(bool discard)
{
 u8 qlen;
 u16 val;

 for (;;) {
  qlen = CMOS_READ(cmos_address);
  if (qlen == 0)
   break;
  val = bios_pop_queue();
  if (val != 0 && !discard)
   handle_key((u8)val);
 }
}

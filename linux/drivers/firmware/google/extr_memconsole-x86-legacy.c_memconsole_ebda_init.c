
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct biosmemcon_ebda {scalar_t__ signature; } ;


 scalar_t__ BIOS_MEMCONSOLE_V1_MAGIC ;
 scalar_t__ BIOS_MEMCONSOLE_V2_MAGIC ;
 int found_v1_header (struct biosmemcon_ebda*) ;
 int found_v2_header (struct biosmemcon_ebda*) ;
 unsigned int get_bios_ebda () ;
 struct biosmemcon_ebda* phys_to_virt (unsigned int) ;
 int pr_info (char*) ;

__attribute__((used)) static bool memconsole_ebda_init(void)
{
 unsigned int address;
 size_t length, cur;

 address = get_bios_ebda();
 if (!address) {
  pr_info("memconsole: BIOS EBDA non-existent.\n");
  return 0;
 }


 length = *(u8 *)phys_to_virt(address);
 length <<= 10;





 for (cur = 0; cur < length; cur++) {
  struct biosmemcon_ebda *hdr = phys_to_virt(address + cur);


  if (hdr->signature == BIOS_MEMCONSOLE_V1_MAGIC) {
   found_v1_header(hdr);
   return 1;
  }


  if (hdr->signature == BIOS_MEMCONSOLE_V2_MAGIC) {
   found_v2_header(hdr);
   return 1;
  }
 }

 pr_info("memconsole: BIOS console EBDA structure not found!\n");
 return 0;
}

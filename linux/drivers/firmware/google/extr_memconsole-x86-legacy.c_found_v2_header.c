
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; int end; int buffer_addr; int num_bytes; } ;
struct biosmemcon_ebda {TYPE_1__ v2; } ;


 int memconsole_baseaddr ;
 int memconsole_length ;
 int memconsole_read ;
 int memconsole_setup (int ) ;
 int phys_to_virt (int ) ;
 int pr_info (char*,struct biosmemcon_ebda*,...) ;

__attribute__((used)) static void found_v2_header(struct biosmemcon_ebda *hdr)
{
 pr_info("memconsole: BIOS console v2 EBDA structure found at %p\n",
  hdr);
 pr_info("memconsole: BIOS console buffer at 0x%.8x, start = %d, end = %d, num_bytes = %d\n",
  hdr->v2.buffer_addr, hdr->v2.start,
  hdr->v2.end, hdr->v2.num_bytes);

 memconsole_baseaddr = phys_to_virt(hdr->v2.buffer_addr + hdr->v2.start);
 memconsole_length = hdr->v2.end - hdr->v2.start;
 memconsole_setup(memconsole_read);
}

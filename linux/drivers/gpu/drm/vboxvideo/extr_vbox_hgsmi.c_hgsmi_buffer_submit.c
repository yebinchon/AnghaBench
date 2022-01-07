
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hgsmi_buffer_header {int dummy; } ;
struct gen_pool {int dummy; } ;
typedef int phys_addr_t ;


 int VGA_PORT_HGSMI_GUEST ;
 int gen_pool_virt_to_phys (struct gen_pool*,unsigned long) ;
 int mb () ;
 int outl (int ,int ) ;

int hgsmi_buffer_submit(struct gen_pool *guest_pool, void *buf)
{
 phys_addr_t offset;

 offset = gen_pool_virt_to_phys(guest_pool, (unsigned long)buf -
           sizeof(struct hgsmi_buffer_header));
 outl(offset, VGA_PORT_HGSMI_GUEST);

 mb();

 return 0;
}

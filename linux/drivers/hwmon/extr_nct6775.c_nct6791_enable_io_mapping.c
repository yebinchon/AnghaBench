
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NCT6791_REG_HM_IO_SPACE_LOCK_ENABLE ;
 int pr_info (char*) ;
 int superio_inb (int,int ) ;
 int superio_outb (int,int ,int) ;

__attribute__((used)) static void nct6791_enable_io_mapping(int sioaddr)
{
 int val;

 val = superio_inb(sioaddr, NCT6791_REG_HM_IO_SPACE_LOCK_ENABLE);
 if (val & 0x10) {
  pr_info("Enabling hardware monitor logical device mappings.\n");
  superio_outb(sioaddr, NCT6791_REG_HM_IO_SPACE_LOCK_ENABLE,
        val & ~0x10);
 }
}

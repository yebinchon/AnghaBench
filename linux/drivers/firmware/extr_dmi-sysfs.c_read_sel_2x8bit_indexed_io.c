
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int data_addr; scalar_t__ index_addr; } ;
struct dmi_system_event_log {TYPE_1__ io; } ;
typedef int loff_t ;


 int inb (int ) ;
 int io_port_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static u8 read_sel_2x8bit_indexed_io(const struct dmi_system_event_log *sel,
         loff_t offset)
{
 u8 ret;

 mutex_lock(&io_port_lock);
 outb((u8)offset, sel->io.index_addr);
 outb((u8)(offset >> 8), sel->io.index_addr + 1);
 ret = inb(sel->io.data_addr);
 mutex_unlock(&io_port_lock);
 return ret;
}

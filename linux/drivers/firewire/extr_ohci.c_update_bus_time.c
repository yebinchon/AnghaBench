
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int bus_time_running; int bus_time; } ;


 int OHCI1394_IntMaskSet ;
 int OHCI1394_cycle64Seconds ;
 int get_cycle_time (struct fw_ohci*) ;
 int get_seconds () ;
 int lower_32_bits (int ) ;
 int reg_write (struct fw_ohci*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 update_bus_time(struct fw_ohci *ohci)
{
 u32 cycle_time_seconds = get_cycle_time(ohci) >> 25;

 if (unlikely(!ohci->bus_time_running)) {
  reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_cycle64Seconds);
  ohci->bus_time = (lower_32_bits(get_seconds()) & ~0x7f) |
                   (cycle_time_seconds & 0x40);
  ohci->bus_time_running = 1;
 }

 if ((ohci->bus_time & 0x40) != (cycle_time_seconds & 0x40))
  ohci->bus_time += 0x40;

 return ohci->bus_time | cycle_time_seconds;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fw_device {scalar_t__* config_rom; } ;


 int RCODE_BUSY ;
 int RCODE_COMPLETE ;
 int read_rom (struct fw_device*,int,int,scalar_t__*) ;

__attribute__((used)) static int reread_config_rom(struct fw_device *device, int generation,
        bool *changed)
{
 u32 q;
 int i, rcode;

 for (i = 0; i < 6; i++) {
  rcode = read_rom(device, generation, i, &q);
  if (rcode != RCODE_COMPLETE)
   return rcode;

  if (i == 0 && q == 0)

   return RCODE_BUSY;

  if (q != device->config_rom[i]) {
   *changed = 1;
   return RCODE_COMPLETE;
  }
 }

 *changed = 0;
 return RCODE_COMPLETE;
}

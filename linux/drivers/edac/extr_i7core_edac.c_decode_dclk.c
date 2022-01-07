
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct memdev_dmi_entry {scalar_t__ conf_mem_clk_speed; scalar_t__ speed; scalar_t__ size; unsigned long length; int type; } ;
struct dmi_header {scalar_t__ type; } ;


 scalar_t__ DMI_ENTRY_MEM_DEVICE ;

__attribute__((used)) static void decode_dclk(const struct dmi_header *dh, void *_dclk_freq)
{
 int *dclk_freq = _dclk_freq;
 u16 dmi_mem_clk_speed;

 if (*dclk_freq == -1)
  return;

 if (dh->type == DMI_ENTRY_MEM_DEVICE) {
  struct memdev_dmi_entry *memdev_dmi_entry =
   (struct memdev_dmi_entry *)dh;
  unsigned long conf_mem_clk_speed_offset =
   (unsigned long)&memdev_dmi_entry->conf_mem_clk_speed -
   (unsigned long)&memdev_dmi_entry->type;
  unsigned long speed_offset =
   (unsigned long)&memdev_dmi_entry->speed -
   (unsigned long)&memdev_dmi_entry->type;


  if (memdev_dmi_entry->size == 0)
   return;





  if (memdev_dmi_entry->length > conf_mem_clk_speed_offset) {
   dmi_mem_clk_speed =
    memdev_dmi_entry->conf_mem_clk_speed;
  } else if (memdev_dmi_entry->length > speed_offset) {
   dmi_mem_clk_speed = memdev_dmi_entry->speed;
  } else {
   *dclk_freq = -1;
   return;
  }

  if (*dclk_freq == 0) {

   if (dmi_mem_clk_speed > 0) {

    *dclk_freq = dmi_mem_clk_speed;
   } else {

    *dclk_freq = -1;
   }
  } else if (*dclk_freq > 0 &&
      *dclk_freq != dmi_mem_clk_speed) {




   *dclk_freq = -1;
  }
 }
}

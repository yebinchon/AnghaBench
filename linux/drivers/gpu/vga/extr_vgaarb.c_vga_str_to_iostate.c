
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_RSRC_LEGACY_IO ;
 int VGA_RSRC_LEGACY_MEM ;
 int VGA_RSRC_NONE ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int vga_str_to_iostate(char *buf, int str_size, int *io_state)
{


 if (strncmp(buf, "none", 4) == 0) {
  *io_state = VGA_RSRC_NONE;
  return 1;
 }


 if (strncmp(buf, "io+mem", 6) == 0)
  goto both;
 else if (strncmp(buf, "io", 2) == 0)
  goto both;
 else if (strncmp(buf, "mem", 3) == 0)
  goto both;
 return 0;
both:
 *io_state = VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM;
 return 1;
}

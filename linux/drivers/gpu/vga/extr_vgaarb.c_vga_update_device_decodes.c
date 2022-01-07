
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_device {int decodes; int locks; int owns; scalar_t__ mem_lock_cnt; scalar_t__ io_lock_cnt; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int VGA_RSRC_LEGACY_IO ;
 int VGA_RSRC_LEGACY_MASK ;
 int VGA_RSRC_LEGACY_MEM ;
 int __vga_put (struct vga_device*,int) ;
 int vga_decode_count ;
 int vga_iostate_to_str (int) ;
 int vgaarb_dbg (struct device*,char*,int ) ;
 int vgaarb_info (struct device*,char*,int ,int ,int ) ;

__attribute__((used)) static inline void vga_update_device_decodes(struct vga_device *vgadev,
          int new_decodes)
{
 struct device *dev = &vgadev->pdev->dev;
 int old_decodes, decodes_removed, decodes_unlocked;

 old_decodes = vgadev->decodes;
 decodes_removed = ~new_decodes & old_decodes;
 decodes_unlocked = vgadev->locks & decodes_removed;
 vgadev->decodes = new_decodes;

 vgaarb_info(dev, "changed VGA decodes: olddecodes=%s,decodes=%s:owns=%s\n",
  vga_iostate_to_str(old_decodes),
  vga_iostate_to_str(vgadev->decodes),
  vga_iostate_to_str(vgadev->owns));


 if (decodes_unlocked) {
  if (decodes_unlocked & VGA_RSRC_LEGACY_IO)
   vgadev->io_lock_cnt = 0;
  if (decodes_unlocked & VGA_RSRC_LEGACY_MEM)
   vgadev->mem_lock_cnt = 0;
  __vga_put(vgadev, decodes_unlocked);
 }


 if (old_decodes & VGA_RSRC_LEGACY_MASK &&
     !(new_decodes & VGA_RSRC_LEGACY_MASK))
  vga_decode_count--;
 if (!(old_decodes & VGA_RSRC_LEGACY_MASK) &&
     new_decodes & VGA_RSRC_LEGACY_MASK)
  vga_decode_count++;
 vgaarb_dbg(dev, "decoding count now is: %d\n", vga_decode_count);
}

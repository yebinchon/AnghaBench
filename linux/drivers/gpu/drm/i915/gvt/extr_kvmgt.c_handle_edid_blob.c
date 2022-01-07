
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ edid_size; } ;
struct vfio_edid_region {char* edid_blob; TYPE_1__ vfio_edid_regs; } ;


 int EINVAL ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static int handle_edid_blob(struct vfio_edid_region *region, char *buf,
   size_t count, u16 offset, bool is_write)
{
 if (offset + count > region->vfio_edid_regs.edid_size)
  return -EINVAL;

 if (is_write)
  memcpy(region->edid_blob + offset, buf, count);
 else
  memcpy(buf, region->edid_blob + offset, count);

 return count;
}

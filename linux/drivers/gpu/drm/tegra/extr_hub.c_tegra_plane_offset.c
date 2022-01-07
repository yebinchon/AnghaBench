
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_plane {unsigned int offset; TYPE_1__* dc; } ;
struct TYPE_2__ {int dev; } ;


 int dev_WARN (int ,char*,unsigned int) ;

__attribute__((used)) static inline unsigned int tegra_plane_offset(struct tegra_plane *plane,
           unsigned int offset)
{
 if (offset >= 0x500 && offset <= 0x581) {
  offset = 0x000 + (offset - 0x500);
  return plane->offset + offset;
 }

 if (offset >= 0x700 && offset <= 0x73c) {
  offset = 0x180 + (offset - 0x700);
  return plane->offset + offset;
 }

 if (offset >= 0x800 && offset <= 0x83e) {
  offset = 0x1c0 + (offset - 0x800);
  return plane->offset + offset;
 }

 dev_WARN(plane->dc->dev, "invalid offset: %x\n", offset);

 return plane->offset + offset;
}

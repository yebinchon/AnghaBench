
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct radeon_device {int bios_header_start; int bios; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef enum radeon_combios_table_offset { ____Placeholder_radeon_combios_table_offset } radeon_combios_table_offset ;
 int RBIOS16 (int) ;
 int RBIOS8 (int) ;

__attribute__((used)) static uint16_t combios_get_table_offset(struct drm_device *dev,
      enum radeon_combios_table_offset table)
{
 struct radeon_device *rdev = dev->dev_private;
 int rev, size;
 uint16_t offset = 0, check_offset;

 if (!rdev->bios)
  return 0;

 switch (table) {

 case 172:
  check_offset = 0xc;
  break;
 case 167:
  check_offset = 0x14;
  break;
 case 162:
  check_offset = 0x2a;
  break;
 case 147:
  check_offset = 0x2c;
  break;
 case 164:
  check_offset = 0x2e;
  break;
 case 139:
  check_offset = 0x30;
  break;
 case 129:
  check_offset = 0x32;
  break;
 case 160:
  check_offset = 0x34;
  break;
 case 152:
  check_offset = 0x36;
  break;
 case 142:
  check_offset = 0x38;
  break;
 case 128:
  check_offset = 0x3e;
  break;
 case 148:
  check_offset = 0x40;
  break;
 case 143:
  check_offset = 0x42;
  break;
 case 138:
  check_offset = 0x46;
  break;
 case 145:
  check_offset = 0x48;
  break;
 case 133:
  check_offset = 0x4a;
  break;
 case 153:
  check_offset = 0x4c;
  break;
 case 171:
  check_offset = 0x4e;
  break;
 case 165:
  check_offset = 0x50;
  break;
 case 159:
  check_offset = 0x52;
  break;
 case 134:
  check_offset = 0x54;
  break;
 case 156:
  check_offset = 0x58;
  break;
 case 146:
  check_offset = 0x5a;
  break;
 case 157:
  check_offset = 0x5c;
  break;
 case 144:
  check_offset = 0x5e;
  break;
 case 163:
  check_offset = 0x60;
  break;
 case 150:
  check_offset = 0x62;
  break;
 case 166:
  check_offset = 0x64;
  break;
 case 155:
  check_offset = 0x66;
  break;
 case 140:
  check_offset = 0x68;
  break;
 case 141:
  check_offset = 0x6a;
  break;
 case 158:
  check_offset = 0x6c;
  break;
 case 136:
  check_offset = 0x6e;
  break;
 case 151:
  check_offset = 0x70;
  break;

 case 170:
  check_offset =
      combios_get_table_offset(dev, 144);
  if (check_offset) {
   rev = RBIOS8(check_offset);
   if (rev > 0) {
    check_offset = RBIOS16(check_offset + 0x3);
    if (check_offset)
     offset = check_offset;
   }
  }
  break;
 case 169:
  check_offset =
      combios_get_table_offset(dev, 144);
  if (check_offset) {
   rev = RBIOS8(check_offset);
   if (rev > 0) {
    check_offset = RBIOS16(check_offset + 0x5);
    if (check_offset)
     offset = check_offset;
   }
  }
  break;
 case 161:
  check_offset =
      combios_get_table_offset(dev, 144);
  if (check_offset) {
   rev = RBIOS8(check_offset);
   if (rev > 0) {
    check_offset = RBIOS16(check_offset + 0x7);
    if (check_offset)
     offset = check_offset;
   }
  }
  break;
 case 168:
  check_offset =
      combios_get_table_offset(dev, 144);
  if (check_offset) {
   rev = RBIOS8(check_offset);
   if (rev == 2) {
    check_offset = RBIOS16(check_offset + 0x9);
    if (check_offset)
     offset = check_offset;
   }
  }
  break;
 case 135:
  check_offset =
      combios_get_table_offset(dev, 145);
  if (check_offset) {
   while (RBIOS8(check_offset++));
   check_offset += 2;
   if (check_offset)
    offset = check_offset;
  }
  break;
 case 137:
  check_offset =
      combios_get_table_offset(dev, 143);
  if (check_offset) {
   check_offset = RBIOS16(check_offset + 0x11);
   if (check_offset)
    offset = check_offset;
  }
  break;
 case 154:
  check_offset =
      combios_get_table_offset(dev, 143);
  if (check_offset) {
   check_offset = RBIOS16(check_offset + 0x13);
   if (check_offset)
    offset = check_offset;
  }
  break;
 case 149:
  check_offset =
      combios_get_table_offset(dev, 143);
  if (check_offset) {
   check_offset = RBIOS16(check_offset + 0x15);
   if (check_offset)
    offset = check_offset;
  }
  break;
 case 130:
  check_offset =
      combios_get_table_offset(dev, 143);
  if (check_offset) {
   check_offset = RBIOS16(check_offset + 0x17);
   if (check_offset)
    offset = check_offset;
  }
  break;
 case 131:
  check_offset =
      combios_get_table_offset(dev, 130);
  if (check_offset) {
   check_offset = RBIOS16(check_offset + 0x2);
   if (check_offset)
    offset = check_offset;
  }
  break;
 case 132:
  check_offset =
      combios_get_table_offset(dev, 130);
  if (check_offset) {
   check_offset = RBIOS16(check_offset + 0x4);
   if (check_offset)
    offset = check_offset;
  }
  break;
 default:
  check_offset = 0;
  break;
 }

 size = RBIOS8(rdev->bios_header_start + 0x6);

 if (table < 170 && check_offset && check_offset < size)
  offset = RBIOS16(rdev->bios_header_start + check_offset);

 return offset;
}

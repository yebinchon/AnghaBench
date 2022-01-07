
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int current_sclk; } ;
struct radeon_device {int family; TYPE_1__ pm; } ;
 int DRM_ERROR (char*) ;

__attribute__((used)) static u32 radeon_get_i2c_prescale(struct radeon_device *rdev)
{
 u32 sclk = rdev->pm.current_sclk;
 u32 prescale = 0;
 u32 nm;
 u8 n, m, loop;
 int i2c_clock;

 switch (rdev->family) {
 case 167:
 case 147:
 case 157:
 case 146:
 case 156:
 case 166:
 case 145:
 case 155:
 case 144:
 case 165:
 case 164:
 case 143:
  i2c_clock = 60;
  nm = (sclk * 10) / (i2c_clock * 4);
  for (loop = 1; loop < 255; loop++) {
   if ((nm / loop) < loop)
    break;
  }
  n = loop - 1;
  m = loop - 2;
  prescale = m | (n << 8);
  break;
 case 142:
 case 154:
 case 153:
 case 163:
 case 162:
 case 141:
  prescale = (((sclk * 10)/(4 * 128 * 100) + 1) << 8) + 128;
  break;
 case 152:
 case 151:
 case 150:

  break;
 case 140:
 case 161:
 case 139:
 case 138:
 case 137:
 case 160:
  i2c_clock = 50;
  if (rdev->family == 161)
   prescale = (127 << 8) + ((sclk * 10) / (4 * 127 * i2c_clock));
  else
   prescale = (((sclk * 10)/(4 * 128 * 100) + 1) << 8) + 128;
  break;
 case 159:
 case 136:
 case 134:
 case 132:

  break;
 case 135:
 case 133:
 case 149:
 case 148:
 case 128:
 case 130:
 case 131:
 case 129:

  break;
 case 171:
 case 158:
 case 168:
 case 170:
 case 169:

  break;
 default:
  DRM_ERROR("i2c: unhandled radeon chip\n");
  break;
 }
 return prescale;
}

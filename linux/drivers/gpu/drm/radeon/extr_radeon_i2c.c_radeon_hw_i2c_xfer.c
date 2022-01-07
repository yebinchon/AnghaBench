
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_i2c_bus_rec {int mm_i2c; } ;
struct radeon_i2c_chan {int mutex; struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct radeon_device {int family; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;
 int DRM_ERROR (char*) ;
 int EIO ;
 struct radeon_i2c_chan* i2c_get_adapdata (struct i2c_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r100_hw_i2c_xfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int r500_hw_i2c_xfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int radeon_hw_i2c_xfer(struct i2c_adapter *i2c_adap,
         struct i2c_msg *msgs, int num)
{
 struct radeon_i2c_chan *i2c = i2c_get_adapdata(i2c_adap);
 struct radeon_device *rdev = i2c->dev->dev_private;
 struct radeon_i2c_bus_rec *rec = &i2c->rec;
 int ret = 0;

 mutex_lock(&i2c->mutex);

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
 case 142:
 case 163:
 case 162:
 case 141:
 case 154:
 case 153:
  ret = r100_hw_i2c_xfer(i2c_adap, msgs, num);
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
  if (rec->mm_i2c)
   ret = r100_hw_i2c_xfer(i2c_adap, msgs, num);
  else
   ret = r500_hw_i2c_xfer(i2c_adap, msgs, num);
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
  ret = -EIO;
  break;
 }

 mutex_unlock(&i2c->mutex);

 return ret;
}

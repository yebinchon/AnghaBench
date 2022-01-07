
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u8 ;
typedef void* u16 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_6__ {int i2c_id; } ;
struct amdgpu_i2c_chan {int mutex; TYPE_1__ rec; struct drm_device* dev; } ;
struct TYPE_7__ {TYPE_5__* atom_context; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
typedef int args ;
struct TYPE_9__ {scalar_t__ scratch; } ;
struct TYPE_8__ {int ucRegIndex; int ucFlag; int ucTransBytes; int ucSlaveAddr; scalar_t__ ucStatus; int ucLineNumber; int ucI2CSpeed; void* lpI2CDataOut; } ;
typedef TYPE_3__ PROCESS_I2C_CHANNEL_TRANSACTION_PS_ALLOCATION ;


 int ATOM_MAX_HW_I2C_READ ;
 int ATOM_MAX_HW_I2C_WRITE ;
 int COMMAND ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int EIO ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ HW_ASSISTED_I2C_STATUS_SUCCESS ;
 int HW_I2C_WRITE ;
 int ProcessI2cChannelTransaction ;
 int TARGET_HW_I2C_CLOCK ;
 int amdgpu_atom_execute_table (TYPE_5__*,int,int *) ;
 int amdgpu_atombios_copy_swap (int*,unsigned char*,int,int) ;
 void* cpu_to_le16 (void*) ;
 int memcpy (void**,int*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int amdgpu_atombios_i2c_process_i2c_ch(struct amdgpu_i2c_chan *chan,
           u8 slave_addr, u8 flags,
           u8 *buf, u8 num)
{
 struct drm_device *dev = chan->dev;
 struct amdgpu_device *adev = dev->dev_private;
 PROCESS_I2C_CHANNEL_TRANSACTION_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, ProcessI2cChannelTransaction);
 unsigned char *base;
 u16 out = cpu_to_le16(0);
 int r = 0;

 memset(&args, 0, sizeof(args));

 mutex_lock(&chan->mutex);

 base = (unsigned char *)adev->mode_info.atom_context->scratch;

 if (flags & HW_I2C_WRITE) {
  if (num > ATOM_MAX_HW_I2C_WRITE) {
   DRM_ERROR("hw i2c: tried to write too many bytes (%d vs 3)\n", num);
   r = -EINVAL;
   goto done;
  }
  if (buf == ((void*)0))
   args.ucRegIndex = 0;
  else
   args.ucRegIndex = buf[0];
  if (num)
   num--;
  if (num) {
   if (buf) {
    memcpy(&out, &buf[1], num);
   } else {
    DRM_ERROR("hw i2c: missing buf with num > 1\n");
    r = -EINVAL;
    goto done;
   }
  }
  args.lpI2CDataOut = cpu_to_le16(out);
 } else {
  if (num > ATOM_MAX_HW_I2C_READ) {
   DRM_ERROR("hw i2c: tried to read too many bytes (%d vs 255)\n", num);
   r = -EINVAL;
   goto done;
  }
  args.ucRegIndex = 0;
  args.lpI2CDataOut = 0;
 }

 args.ucFlag = flags;
 args.ucI2CSpeed = TARGET_HW_I2C_CLOCK;
 args.ucTransBytes = num;
 args.ucSlaveAddr = slave_addr << 1;
 args.ucLineNumber = chan->rec.i2c_id;

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);


 if (args.ucStatus != HW_ASSISTED_I2C_STATUS_SUCCESS) {
  DRM_DEBUG_KMS("hw_i2c error\n");
  r = -EIO;
  goto done;
 }

 if (!(flags & HW_I2C_WRITE))
  amdgpu_atombios_copy_swap(buf, base, num, 0);

done:
 mutex_unlock(&chan->mutex);

 return r;
}

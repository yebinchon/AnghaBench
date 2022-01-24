#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u8 ;
typedef  void* u16 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_6__ {int /*<<< orphan*/  i2c_id; } ;
struct amdgpu_i2c_chan {int /*<<< orphan*/  mutex; TYPE_1__ rec; struct drm_device* dev; } ;
struct TYPE_7__ {TYPE_5__* atom_context; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_9__ {scalar_t__ scratch; } ;
struct TYPE_8__ {int ucRegIndex; int ucFlag; int ucTransBytes; int ucSlaveAddr; scalar_t__ ucStatus; int /*<<< orphan*/  ucLineNumber; int /*<<< orphan*/  ucI2CSpeed; void* lpI2CDataOut; } ;
typedef  TYPE_3__ PROCESS_I2C_CHANNEL_TRANSACTION_PS_ALLOCATION ;

/* Variables and functions */
 int ATOM_MAX_HW_I2C_READ ; 
 int ATOM_MAX_HW_I2C_WRITE ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HW_ASSISTED_I2C_STATUS_SUCCESS ; 
 int HW_I2C_WRITE ; 
 int /*<<< orphan*/  ProcessI2cChannelTransaction ; 
 int /*<<< orphan*/  TARGET_HW_I2C_CLOCK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,unsigned char*,int,int) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void**,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct amdgpu_i2c_chan *chan,
				       u8 slave_addr, u8 flags,
				       u8 *buf, u8 num)
{
	struct drm_device *dev = chan->dev;
	struct amdgpu_device *adev = dev->dev_private;
	PROCESS_I2C_CHANNEL_TRANSACTION_PS_ALLOCATION args;
	int index = FUNC2(COMMAND, ProcessI2cChannelTransaction);
	unsigned char *base;
	u16 out = FUNC5(0);
	int r = 0;

	FUNC7(&args, 0, sizeof(args));

	FUNC8(&chan->mutex);

	base = (unsigned char *)adev->mode_info.atom_context->scratch;

	if (flags & HW_I2C_WRITE) {
		if (num > ATOM_MAX_HW_I2C_WRITE) {
			FUNC1("hw i2c: tried to write too many bytes (%d vs 3)\n", num);
			r = -EINVAL;
			goto done;
		}
		if (buf == NULL)
			args.ucRegIndex = 0;
		else
			args.ucRegIndex = buf[0];
		if (num)
			num--;
		if (num) {
			if (buf) {
				FUNC6(&out, &buf[1], num);
			} else {
				FUNC1("hw i2c: missing buf with num > 1\n");
				r = -EINVAL;
				goto done;
			}
		}
		args.lpI2CDataOut = FUNC5(out);
	} else {
		if (num > ATOM_MAX_HW_I2C_READ) {
			FUNC1("hw i2c: tried to read too many bytes (%d vs 255)\n", num);
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

	FUNC3(adev->mode_info.atom_context, index, (uint32_t *)&args);

	/* error */
	if (args.ucStatus != HW_ASSISTED_I2C_STATUS_SUCCESS) {
		FUNC0("hw_i2c error\n");
		r = -EIO;
		goto done;
	}

	if (!(flags & HW_I2C_WRITE))
		FUNC4(buf, base, num, false);

done:
	FUNC9(&chan->mutex);

	return r;
}
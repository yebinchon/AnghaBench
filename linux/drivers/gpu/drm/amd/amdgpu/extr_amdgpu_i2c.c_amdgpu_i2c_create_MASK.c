#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_2__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_10__ {TYPE_3__* algo_data; int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; TYPE_1__ dev; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct TYPE_9__ {int udelay; struct amdgpu_i2c_chan* data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  setscl; int /*<<< orphan*/  setsda; int /*<<< orphan*/  post_xfer; int /*<<< orphan*/  pre_xfer; } ;
struct amdgpu_i2c_bus_rec {scalar_t__ hw_capable; scalar_t__ mm_i2c; } ;
struct amdgpu_i2c_chan {TYPE_4__ adapter; TYPE_3__ bit; int /*<<< orphan*/  mutex; struct drm_device* dev; struct amdgpu_i2c_bus_rec rec; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  amdgpu_atombios_i2c_algo ; 
 scalar_t__ amdgpu_hw_i2c ; 
 int /*<<< orphan*/  amdgpu_i2c_get_clock ; 
 int /*<<< orphan*/  amdgpu_i2c_get_data ; 
 int /*<<< orphan*/  amdgpu_i2c_post_xfer ; 
 int /*<<< orphan*/  amdgpu_i2c_pre_xfer ; 
 int /*<<< orphan*/  amdgpu_i2c_set_clock ; 
 int /*<<< orphan*/  amdgpu_i2c_set_data ; 
 int FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct amdgpu_i2c_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_i2c_chan*) ; 
 struct amdgpu_i2c_chan* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

struct amdgpu_i2c_chan *FUNC9(struct drm_device *dev,
					  const struct amdgpu_i2c_bus_rec *rec,
					  const char *name)
{
	struct amdgpu_i2c_chan *i2c;
	int ret;

	/* don't add the mm_i2c bus unless hw_i2c is enabled */
	if (rec->mm_i2c && (amdgpu_hw_i2c == 0))
		return NULL;

	i2c = FUNC5(sizeof(struct amdgpu_i2c_chan), GFP_KERNEL);
	if (i2c == NULL)
		return NULL;

	i2c->rec = *rec;
	i2c->adapter.owner = THIS_MODULE;
	i2c->adapter.class = I2C_CLASS_DDC;
	i2c->adapter.dev.parent = &dev->pdev->dev;
	i2c->dev = dev;
	FUNC3(&i2c->adapter, i2c);
	FUNC6(&i2c->mutex);
	if (rec->hw_capable &&
	    amdgpu_hw_i2c) {
		/* hw i2c using atom */
		FUNC7(i2c->adapter.name, sizeof(i2c->adapter.name),
			 "AMDGPU i2c hw bus %s", name);
		i2c->adapter.algo = &amdgpu_atombios_i2c_algo;
		ret = FUNC1(&i2c->adapter);
		if (ret)
			goto out_free;
	} else {
		/* set the amdgpu bit adapter */
		FUNC7(i2c->adapter.name, sizeof(i2c->adapter.name),
			 "AMDGPU i2c bit bus %s", name);
		i2c->adapter.algo_data = &i2c->bit;
		i2c->bit.pre_xfer = amdgpu_i2c_pre_xfer;
		i2c->bit.post_xfer = amdgpu_i2c_post_xfer;
		i2c->bit.setsda = amdgpu_i2c_set_data;
		i2c->bit.setscl = amdgpu_i2c_set_clock;
		i2c->bit.getsda = amdgpu_i2c_get_data;
		i2c->bit.getscl = amdgpu_i2c_get_clock;
		i2c->bit.udelay = 10;
		i2c->bit.timeout = FUNC8(2200);	/* from VESA */
		i2c->bit.data = i2c;
		ret = FUNC2(&i2c->adapter);
		if (ret) {
			FUNC0("Failed to register bit i2c %s\n", name);
			goto out_free;
		}
	}

	return i2c;
out_free:
	FUNC4(i2c);
	return NULL;

}
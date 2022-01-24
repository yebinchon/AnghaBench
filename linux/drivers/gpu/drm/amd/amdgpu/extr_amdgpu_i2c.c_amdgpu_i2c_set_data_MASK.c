#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct amdgpu_i2c_bus_rec {int en_data_mask; int /*<<< orphan*/  en_data_reg; } ;
struct amdgpu_i2c_chan {struct amdgpu_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *i2c_priv, int data)
{
	struct amdgpu_i2c_chan *i2c = i2c_priv;
	struct amdgpu_device *adev = i2c->dev->dev_private;
	struct amdgpu_i2c_bus_rec *rec = &i2c->rec;
	uint32_t val;

	/* set pin direction */
	val = FUNC0(rec->en_data_reg) & ~rec->en_data_mask;
	val |= data ? 0 : rec->en_data_mask;
	FUNC1(rec->en_data_reg, val);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvkm_i2c_pad {scalar_t__ mode; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ NVKM_I2C_PAD_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_pad*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_i2c_pad*,scalar_t__) ; 

void
FUNC3(struct nvkm_i2c_pad *pad)
{
	FUNC0(pad, "release");
	if (pad->mode == NVKM_I2C_PAD_OFF)
		FUNC2(pad, pad->mode);
	FUNC1(&pad->mutex);
}
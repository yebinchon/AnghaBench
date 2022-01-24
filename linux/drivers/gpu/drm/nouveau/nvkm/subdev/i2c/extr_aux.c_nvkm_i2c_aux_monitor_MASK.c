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
struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_aux {struct nvkm_i2c_pad* pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_aux*,char*,char*) ; 
 int /*<<< orphan*/  NVKM_I2C_PAD_AUX ; 
 int /*<<< orphan*/  NVKM_I2C_PAD_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_i2c_pad*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct nvkm_i2c_aux *aux, bool monitor)
{
	struct nvkm_i2c_pad *pad = aux->pad;
	FUNC0(aux, "monitor: %s", monitor ? "yes" : "no");
	if (monitor)
		FUNC1(pad, NVKM_I2C_PAD_AUX);
	else
		FUNC1(pad, NVKM_I2C_PAD_OFF);
}
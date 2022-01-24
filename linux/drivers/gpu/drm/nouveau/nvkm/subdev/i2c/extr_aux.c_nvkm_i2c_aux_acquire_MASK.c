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
struct nvkm_i2c_aux {int /*<<< orphan*/  mutex; scalar_t__ enabled; struct nvkm_i2c_pad* pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_aux*,char*) ; 
 int EIO ; 
 int /*<<< orphan*/  NVKM_I2C_PAD_AUX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nvkm_i2c_pad*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct nvkm_i2c_aux *aux)
{
	struct nvkm_i2c_pad *pad = aux->pad;
	int ret;

	FUNC0(aux, "acquire");
	FUNC1(&aux->mutex);

	if (aux->enabled)
		ret = FUNC3(pad, NVKM_I2C_PAD_AUX);
	else
		ret = -EIO;

	if (ret)
		FUNC2(&aux->mutex);
	return ret;
}
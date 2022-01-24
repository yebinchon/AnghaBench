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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_i2c_aux {int dummy; } ;
struct nvbios_init {int dummy; } ;

/* Variables and functions */
 struct nvkm_i2c_aux* FUNC0 (struct nvbios_init*) ; 
 scalar_t__ FUNC1 (struct nvbios_init*) ; 
 int FUNC2 (struct nvkm_i2c_aux*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static u8
FUNC4(struct nvbios_init *init, u32 addr)
{
	struct nvkm_i2c_aux *aux = FUNC0(init);
	u8 data;

	if (aux && FUNC1(init)) {
		int ret = FUNC2(aux, addr, &data, 1);
		if (ret == 0)
			return data;
		FUNC3("auxch read failed with %d\n", ret);
	}

	return 0x00;
}
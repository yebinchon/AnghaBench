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
struct nvkm_i2c_bus_func {int dummy; } ;
struct nvkm_i2c_bus {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_i2c_bus* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_i2c_bus_func const*,struct nvkm_i2c_pad*,int,struct nvkm_i2c_bus*) ; 

int
FUNC2(const struct nvkm_i2c_bus_func *func,
		  struct nvkm_i2c_pad *pad, int id,
		  struct nvkm_i2c_bus **pbus)
{
	if (!(*pbus = FUNC0(sizeof(**pbus), GFP_KERNEL)))
		return -ENOMEM;
	return FUNC1(func, pad, id, *pbus);
}
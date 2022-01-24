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
struct nvkm_therm_func {int dummy; } ;
struct nvkm_therm {int dummy; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_therm* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_therm*,struct nvkm_device*,int,struct nvkm_therm_func const*) ; 

int
FUNC2(const struct nvkm_therm_func *func, struct nvkm_device *device,
		int index, struct nvkm_therm **ptherm)
{
	struct nvkm_therm *therm;

	if (!(therm = *ptherm = FUNC0(sizeof(*therm), GFP_KERNEL)))
		return -ENOMEM;

	FUNC1(therm, device, index, func);
	return 0;
}
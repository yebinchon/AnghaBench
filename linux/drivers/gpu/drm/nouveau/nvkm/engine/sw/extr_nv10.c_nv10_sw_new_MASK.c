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
struct nvkm_sw {int dummy; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  nv10_sw ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_sw**) ; 

int
FUNC1(struct nvkm_device *device, int index, struct nvkm_sw **psw)
{
	return FUNC0(&nv10_sw, device, index, psw);
}
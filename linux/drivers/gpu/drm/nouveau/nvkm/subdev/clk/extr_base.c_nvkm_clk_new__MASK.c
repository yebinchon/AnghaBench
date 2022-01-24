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
struct nvkm_device {int dummy; } ;
struct nvkm_clk_func {int dummy; } ;
struct nvkm_clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_clk* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_clk_func const*,struct nvkm_device*,int,int,struct nvkm_clk*) ; 

int
FUNC2(const struct nvkm_clk_func *func, struct nvkm_device *device,
	      int index, bool allow_reclock, struct nvkm_clk **pclk)
{
	if (!(*pclk = FUNC0(sizeof(**pclk), GFP_KERNEL)))
		return -ENOMEM;
	return FUNC1(func, device, index, allow_reclock, *pclk);
}
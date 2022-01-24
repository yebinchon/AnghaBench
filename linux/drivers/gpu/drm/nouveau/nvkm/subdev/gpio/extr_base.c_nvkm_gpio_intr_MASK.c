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
typedef  scalar_t__ u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_gpio_ntfy_rep {int mask; } ;
struct nvkm_gpio {int /*<<< orphan*/  event; TYPE_1__* func; } ;
typedef  int /*<<< orphan*/  rep ;
struct TYPE_2__ {scalar_t__ lines; int /*<<< orphan*/  (* intr_stat ) (struct nvkm_gpio*,scalar_t__*,scalar_t__*) ;} ;

/* Variables and functions */
 int NVKM_GPIO_HI ; 
 int NVKM_GPIO_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,struct nvkm_gpio_ntfy_rep*,int) ; 
 struct nvkm_gpio* FUNC1 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_gpio*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_subdev *subdev)
{
	struct nvkm_gpio *gpio = FUNC1(subdev);
	u32 hi, lo, i;

	gpio->func->intr_stat(gpio, &hi, &lo);

	for (i = 0; (hi | lo) && i < gpio->func->lines; i++) {
		struct nvkm_gpio_ntfy_rep rep = {
			.mask = (NVKM_GPIO_HI * !!(hi & (1 << i))) |
				(NVKM_GPIO_LO * !!(lo & (1 << i))),
		};
		FUNC0(&gpio->event, rep.mask, i, &rep, sizeof(rep));
	}
}
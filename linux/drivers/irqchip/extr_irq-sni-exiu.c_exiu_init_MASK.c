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
struct resource {int /*<<< orphan*/  start; } ;
struct fwnode_handle {int dummy; } ;
struct exiu_irq_data {scalar_t__ base; int /*<<< orphan*/  spi_base; } ;

/* Variables and functions */
 scalar_t__ EIMASK ; 
 scalar_t__ EIREQCLR ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct exiu_irq_data* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct fwnode_handle const*,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct exiu_irq_data*) ; 
 struct exiu_irq_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static struct exiu_irq_data *FUNC7(const struct fwnode_handle *fwnode,
				       struct resource *res)
{
	struct exiu_irq_data *data;
	int err;

	data = FUNC4(sizeof(*data), GFP_KERNEL);
	if (!data)
		return FUNC0(-ENOMEM);

	if (FUNC1(fwnode, "socionext,spi-base",
					   &data->spi_base, 1)) {
		err = -ENODEV;
		goto out_free;
	}

	data->base = FUNC2(res->start, FUNC5(res));
	if (!data->base) {
		err = -ENODEV;
		goto out_free;
	}

	/* clear and mask all interrupts */
	FUNC6(0xFFFFFFFF, data->base + EIREQCLR);
	FUNC6(0xFFFFFFFF, data->base + EIMASK);

	return data;

out_free:
	FUNC3(data);
	return FUNC0(err);
}
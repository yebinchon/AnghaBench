#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stm32_lptim_trigger {TYPE_2__* dev; int /*<<< orphan*/  trg; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct iio_trigger {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iio_trigger* FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_trigger*,struct stm32_lptim_trigger*) ; 
 int /*<<< orphan*/  stm32_lptim_trigger_ops ; 

__attribute__((used)) static int FUNC3(struct stm32_lptim_trigger *priv)
{
	struct iio_trigger *trig;

	trig = FUNC0(priv->dev, "%s", priv->trg);
	if  (!trig)
		return -ENOMEM;

	trig->dev.parent = priv->dev->parent;
	trig->ops = &stm32_lptim_trigger_ops;
	FUNC2(trig, priv);

	return FUNC1(priv->dev, trig);
}
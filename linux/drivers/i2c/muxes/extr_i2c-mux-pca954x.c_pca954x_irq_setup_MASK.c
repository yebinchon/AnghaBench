#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pca954x {int /*<<< orphan*/  irq; TYPE_1__* chip; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_2__ dev; } ;
struct TYPE_3__ {int nchans; int /*<<< orphan*/  has_irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 struct pca954x* FUNC1 (struct i2c_mux_core*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct pca954x*) ; 
 int /*<<< orphan*/  irq_domain_simple_ops ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct pca954x*) ; 
 int /*<<< orphan*/  pca954x_irq_chip ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_mux_core *muxc)
{
	struct pca954x *data = FUNC1(muxc);
	struct i2c_client *client = data->client;
	int c, irq;

	if (!data->chip->has_irq || client->irq <= 0)
		return 0;

	FUNC6(&data->lock);

	data->irq = FUNC3(client->dev.of_node,
					  data->chip->nchans,
					  &irq_domain_simple_ops, data);
	if (!data->irq)
		return -ENODEV;

	for (c = 0; c < data->chip->nchans; c++) {
		irq = FUNC2(data->irq, c);
		if (!irq) {
			FUNC0(&client->dev, "failed irq create map\n");
			return -EINVAL;
		}
		FUNC5(irq, data);
		FUNC4(irq, &pca954x_irq_chip,
			handle_simple_irq);
	}

	return 0;
}
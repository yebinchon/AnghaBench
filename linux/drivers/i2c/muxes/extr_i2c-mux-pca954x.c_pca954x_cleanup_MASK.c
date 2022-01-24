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
struct pca954x {scalar_t__ irq; TYPE_1__* chip; struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int nchans; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_idle_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_mux_core*) ; 
 struct pca954x* FUNC2 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(struct i2c_mux_core *muxc)
{
	struct pca954x *data = FUNC2(muxc);
	struct i2c_client *client = data->client;
	int c, irq;

	FUNC0(&client->dev, &dev_attr_idle_state);

	if (data->irq) {
		for (c = 0; c < data->chip->nchans; c++) {
			irq = FUNC5(data->irq, c);
			FUNC3(irq);
		}
		FUNC4(data->irq);
	}
	FUNC1(muxc);
}
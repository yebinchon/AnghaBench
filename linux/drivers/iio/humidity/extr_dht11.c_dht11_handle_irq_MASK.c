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
struct iio_dev {int dummy; } ;
struct dht11 {size_t num_edges; int /*<<< orphan*/  completion; int /*<<< orphan*/  gpiod; TYPE_1__* edges; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  value; int /*<<< orphan*/  ts; } ;

/* Variables and functions */
 size_t DHT11_EDGES_PER_READ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dht11* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct iio_dev *iio = data;
	struct dht11 *dht11 = FUNC2(iio);

	/* TODO: Consider making the handler safe for IRQ sharing */
	if (dht11->num_edges < DHT11_EDGES_PER_READ && dht11->num_edges >= 0) {
		dht11->edges[dht11->num_edges].ts = FUNC3();
		dht11->edges[dht11->num_edges++].value =
						FUNC1(dht11->gpiod);

		if (dht11->num_edges >= DHT11_EDGES_PER_READ)
			FUNC0(&dht11->completion);
	}

	return IRQ_HANDLED;
}
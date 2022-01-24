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
struct safexcel_ring_irq_data {int ring; struct safexcel_crypto_priv* priv; } ;
struct safexcel_crypto_priv {TYPE_2__* ring; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct TYPE_4__ {TYPE_1__ work_data; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct safexcel_crypto_priv*,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct safexcel_ring_irq_data *irq_data = data;
	struct safexcel_crypto_priv *priv = irq_data->priv;
	int ring = irq_data->ring;

	FUNC1(priv, ring);

	FUNC0(priv->ring[ring].workqueue,
		   &priv->ring[ring].work_data.work);

	return IRQ_HANDLED;
}
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
typedef  int u32 ;
struct ipu_dmfc_priv {int /*<<< orphan*/  mutex; scalar_t__ base; } ;
struct dmfc_channel {int slots; TYPE_1__* data; struct ipu_dmfc_priv* priv; } ;
struct TYPE_2__ {int max_fifo_lines; int eot_shift; } ;

/* Variables and functions */
 scalar_t__ DMFC_GENERAL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct dmfc_channel *dmfc, int width)
{
	struct ipu_dmfc_priv *priv = dmfc->priv;
	u32 dmfc_gen1;

	FUNC0(&priv->mutex);

	dmfc_gen1 = FUNC2(priv->base + DMFC_GENERAL1);

	if ((dmfc->slots * 64 * 4) / width > dmfc->data->max_fifo_lines)
		dmfc_gen1 |= 1 << dmfc->data->eot_shift;
	else
		dmfc_gen1 &= ~(1 << dmfc->data->eot_shift);

	FUNC3(dmfc_gen1, priv->base + DMFC_GENERAL1);

	FUNC1(&priv->mutex);
}
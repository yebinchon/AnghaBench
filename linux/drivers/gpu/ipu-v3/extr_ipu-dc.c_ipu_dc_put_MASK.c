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
struct ipu_dc_priv {int /*<<< orphan*/  mutex; } ;
struct ipu_dc {int in_use; struct ipu_dc_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ipu_dc *dc)
{
	struct ipu_dc_priv *priv = dc->priv;

	FUNC0(&priv->mutex);
	dc->in_use = false;
	FUNC1(&priv->mutex);
}
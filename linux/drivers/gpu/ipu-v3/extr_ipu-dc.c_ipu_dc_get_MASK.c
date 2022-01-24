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
struct ipu_soc {struct ipu_dc_priv* dc_priv; } ;
struct ipu_dc_priv {int /*<<< orphan*/  mutex; struct ipu_dc* channels; } ;
struct ipu_dc {int in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENODEV ; 
 struct ipu_dc* FUNC0 (int /*<<< orphan*/ ) ; 
 int IPU_DC_NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct ipu_dc *FUNC3(struct ipu_soc *ipu, int channel)
{
	struct ipu_dc_priv *priv = ipu->dc_priv;
	struct ipu_dc *dc;

	if (channel >= IPU_DC_NUM_CHANNELS)
		return FUNC0(-ENODEV);

	dc = &priv->channels[channel];

	FUNC1(&priv->mutex);

	if (dc->in_use) {
		FUNC2(&priv->mutex);
		return FUNC0(-EBUSY);
	}

	dc->in_use = true;

	FUNC2(&priv->mutex);

	return dc;
}
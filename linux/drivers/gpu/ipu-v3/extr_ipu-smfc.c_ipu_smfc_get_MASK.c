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
struct ipu_soc {struct ipu_smfc_priv* smfc_priv; } ;
struct ipu_smfc_priv {int /*<<< orphan*/  lock; struct ipu_smfc* channel; } ;
struct ipu_smfc {int inuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ipu_smfc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct ipu_smfc *FUNC3(struct ipu_soc *ipu, unsigned int chno)
{
	struct ipu_smfc_priv *priv = ipu->smfc_priv;
	struct ipu_smfc *smfc, *ret;
	unsigned long flags;

	if (chno >= 4)
		return FUNC0(-EINVAL);

	smfc = &priv->channel[chno];
	ret = smfc;

	FUNC1(&priv->lock, flags);

	if (smfc->inuse) {
		ret = FUNC0(-EBUSY);
		goto unlock;
	}

	smfc->inuse = true;
unlock:
	FUNC2(&priv->lock, flags);
	return ret;
}
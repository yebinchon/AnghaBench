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
struct ipu_soc {struct ipu_csi** csi_priv; } ;
struct ipu_csi {int inuse; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ipu_csi* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct ipu_csi *FUNC3(struct ipu_soc *ipu, int id)
{
	unsigned long flags;
	struct ipu_csi *csi, *ret;

	if (id > 1)
		return FUNC0(-EINVAL);

	csi = ipu->csi_priv[id];
	ret = csi;

	FUNC1(&csi->lock, flags);

	if (csi->inuse) {
		ret = FUNC0(-EBUSY);
		goto unlock;
	}

	csi->inuse = true;
unlock:
	FUNC2(&csi->lock, flags);
	return ret;
}
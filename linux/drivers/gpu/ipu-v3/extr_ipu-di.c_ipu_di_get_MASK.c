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
struct ipu_soc {struct ipu_di** di_priv; } ;
struct ipu_di {int inuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ipu_di* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipu_di_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct ipu_di *FUNC3(struct ipu_soc *ipu, int disp)
{
	struct ipu_di *di;

	if (disp > 1)
		return FUNC0(-EINVAL);

	di = ipu->di_priv[disp];

	FUNC1(&ipu_di_lock);

	if (di->inuse) {
		di = FUNC0(-EBUSY);
		goto out;
	}

	di->inuse = true;
out:
	FUNC2(&ipu_di_lock);

	return di;
}
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
struct TYPE_2__ {int /*<<< orphan*/  vf2pf_lock; int /*<<< orphan*/  pf2vf_bh_tasklet; } ;
struct adf_accel_dev {TYPE_1__ vf; } ;

/* Variables and functions */
 scalar_t__ adf_pf2vf_bh_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct adf_accel_dev *accel_dev)
{
	FUNC1(&accel_dev->vf.pf2vf_bh_tasklet,
		     (void *)adf_pf2vf_bh_handler, (unsigned long)accel_dev);

	FUNC0(&accel_dev->vf.vf2pf_lock);
	return 0;
}
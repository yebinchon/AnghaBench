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
typedef  scalar_t__ u32 ;
struct bcm_iproc_i2c_dev {scalar_t__ base; int /*<<< orphan*/  idm_lock; scalar_t__ idm_base; int /*<<< orphan*/  ape_addr_mask; } ;

/* Variables and functions */
 scalar_t__ IDM_CTRL_DIRECT_OFFSET ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC4(struct bcm_iproc_i2c_dev *iproc_i2c,
				   u32 offset)
{
	u32 val;

	if (iproc_i2c->idm_base) {
		FUNC1(&iproc_i2c->idm_lock);
		FUNC3(iproc_i2c->ape_addr_mask,
		       iproc_i2c->idm_base + IDM_CTRL_DIRECT_OFFSET);
		val = FUNC0(iproc_i2c->base + offset);
		FUNC2(&iproc_i2c->idm_lock);
	} else {
		val = FUNC0(iproc_i2c->base + offset);
	}

	return val;
}
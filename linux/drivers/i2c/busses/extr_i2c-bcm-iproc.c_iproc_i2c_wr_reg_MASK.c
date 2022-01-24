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
struct bcm_iproc_i2c_dev {scalar_t__ base; int /*<<< orphan*/  idm_lock; scalar_t__ idm_base; scalar_t__ ape_addr_mask; } ;

/* Variables and functions */
 scalar_t__ IDM_CTRL_DIRECT_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct bcm_iproc_i2c_dev *iproc_i2c,
				    u32 offset, u32 val)
{
	if (iproc_i2c->idm_base) {
		FUNC0(&iproc_i2c->idm_lock);
		FUNC2(iproc_i2c->ape_addr_mask,
		       iproc_i2c->idm_base + IDM_CTRL_DIRECT_OFFSET);
		FUNC2(val, iproc_i2c->base + offset);
		FUNC1(&iproc_i2c->idm_lock);
	} else {
		FUNC2(val, iproc_i2c->base + offset);
	}
}
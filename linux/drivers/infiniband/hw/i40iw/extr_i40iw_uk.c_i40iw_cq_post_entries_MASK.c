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
typedef  int /*<<< orphan*/  u8 ;
struct i40iw_cq_uk {int /*<<< orphan*/  cq_ring; int /*<<< orphan*/  shadow_area; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC3(struct i40iw_cq_uk *cq,
						    u8 count)
{
	FUNC1(cq->cq_ring, count);
	FUNC2(cq->shadow_area, 0,
		      FUNC0(cq->cq_ring));
	return 0;
}
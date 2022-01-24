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
struct ad_sigma_delta {int dummy; } ;
struct ad7793_state {int /*<<< orphan*/  mode; int /*<<< orphan*/  sd; } ;
typedef  enum ad_sigma_delta_mode { ____Placeholder_ad_sigma_delta_mode } ad_sigma_delta_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AD7793_MODE_SEL_MASK ; 
 int /*<<< orphan*/  AD7793_REG_MODE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ad7793_state* FUNC2 (struct ad_sigma_delta*) ; 

__attribute__((used)) static int FUNC3(struct ad_sigma_delta *sd,
			   enum ad_sigma_delta_mode mode)
{
	struct ad7793_state *st = FUNC2(sd);

	st->mode &= ~AD7793_MODE_SEL_MASK;
	st->mode |= FUNC0(mode);

	return FUNC1(&st->sd, AD7793_REG_MODE, 2, st->mode);
}
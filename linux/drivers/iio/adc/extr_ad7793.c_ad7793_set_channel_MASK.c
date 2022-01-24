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
struct ad7793_state {int /*<<< orphan*/  conf; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  AD7793_CONF_CHAN_MASK ; 
 int /*<<< orphan*/  AD7793_REG_CONF ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ad7793_state* FUNC2 (struct ad_sigma_delta*) ; 

__attribute__((used)) static int FUNC3(struct ad_sigma_delta *sd, unsigned int channel)
{
	struct ad7793_state *st = FUNC2(sd);

	st->conf &= ~AD7793_CONF_CHAN_MASK;
	st->conf |= FUNC0(channel);

	return FUNC1(&st->sd, AD7793_REG_CONF, 2, st->conf);
}
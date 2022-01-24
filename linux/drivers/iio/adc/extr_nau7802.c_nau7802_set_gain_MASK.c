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
struct nau7802_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; scalar_t__ conversion_count; } ;

/* Variables and functions */
 int NAU7802_CTRL1_GAINS_BITS ; 
 int /*<<< orphan*/  NAU7802_REG_CTRL1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nau7802_state *st, int gain)
{
	int ret;

	FUNC2(&st->lock);
	st->conversion_count = 0;

	ret = FUNC0(st->client, NAU7802_REG_CTRL1);
	if (ret < 0)
		goto nau7802_sysfs_set_gain_out;
	ret = FUNC1(st->client, NAU7802_REG_CTRL1,
					(ret & (~NAU7802_CTRL1_GAINS_BITS)) |
					gain);

nau7802_sysfs_set_gain_out:
	FUNC3(&st->lock);

	return ret;
}
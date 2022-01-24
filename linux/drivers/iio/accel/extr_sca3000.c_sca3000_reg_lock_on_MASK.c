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
struct sca3000_state {int* rx; } ;

/* Variables and functions */
 int SCA3000_LOCKED ; 
 int /*<<< orphan*/  SCA3000_REG_STATUS_ADDR ; 
 int FUNC0 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct sca3000_state *st)
{
	int ret;

	ret = FUNC0(st, SCA3000_REG_STATUS_ADDR, 1);
	if (ret < 0)
		return ret;

	return !(st->rx[0] & SCA3000_LOCKED);
}
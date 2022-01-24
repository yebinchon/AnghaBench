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
struct trusted_foundations_platform_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trusted_foundations_ops ; 

void FUNC1(struct trusted_foundations_platform_data *pd)
{
	/*
	 * we are not using version information for now since currently
	 * supported SMCs are compatible with all TF releases
	 */
	FUNC0(&trusted_foundations_ops);
}
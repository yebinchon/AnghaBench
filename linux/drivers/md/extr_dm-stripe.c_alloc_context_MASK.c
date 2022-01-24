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
struct stripe_c {int dummy; } ;
struct stripe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int,int,unsigned int) ; 
 struct stripe_c* FUNC1 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct stripe_c *FUNC2(unsigned int stripes)
{
	size_t len;

	if (FUNC0(sizeof(struct stripe_c), sizeof(struct stripe),
			     stripes))
		return NULL;

	len = sizeof(struct stripe_c) + (sizeof(struct stripe) * stripes);

	return FUNC1(len, GFP_KERNEL);
}
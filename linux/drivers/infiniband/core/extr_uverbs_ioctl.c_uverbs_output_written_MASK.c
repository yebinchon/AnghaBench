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
struct uverbs_attr_bundle {int dummy; } ;
struct uverbs_attr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uverbs_attr const*) ; 
 int FUNC1 (struct uverbs_attr const*) ; 
 struct uverbs_attr* FUNC2 (struct uverbs_attr_bundle const*,size_t) ; 
 int FUNC3 (struct uverbs_attr_bundle const*,struct uverbs_attr const*) ; 

int FUNC4(const struct uverbs_attr_bundle *bundle, size_t idx)
{
	const struct uverbs_attr *attr = FUNC2(bundle, idx);

	if (FUNC0(attr))
		return FUNC1(attr);

	return FUNC3(bundle, attr);
}
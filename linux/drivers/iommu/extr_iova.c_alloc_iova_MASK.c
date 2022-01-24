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
struct iova_domain {int dummy; } ;
struct iova {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iova_domain*,unsigned long,unsigned long,struct iova*,int) ; 
 struct iova* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct iova*) ; 

struct iova *
FUNC3(struct iova_domain *iovad, unsigned long size,
	unsigned long limit_pfn,
	bool size_aligned)
{
	struct iova *new_iova;
	int ret;

	new_iova = FUNC1();
	if (!new_iova)
		return NULL;

	ret = FUNC0(iovad, size, limit_pfn + 1,
			new_iova, size_aligned);

	if (ret) {
		FUNC2(new_iova);
		return NULL;
	}

	return new_iova;
}
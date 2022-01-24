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
struct pasid_entry {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct pasid_entry* FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pasid_entry*) ; 

__attribute__((used)) static void FUNC3(struct device *dev, int pasid)
{
	struct pasid_entry *pe;

	pe = FUNC1(dev, pasid);
	if (FUNC0(!pe))
		return;

	FUNC2(pe);
}
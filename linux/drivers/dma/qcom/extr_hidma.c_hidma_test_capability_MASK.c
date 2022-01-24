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
struct device {int dummy; } ;
typedef  enum hidma_cap { ____Placeholder_hidma_cap } hidma_cap ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 

__attribute__((used)) static bool FUNC1(struct device *dev, enum hidma_cap test_cap)
{
	enum hidma_cap cap;

	cap = (enum hidma_cap) FUNC0(dev);
	return cap ? ((cap & test_cap) > 0) : 0;
}
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
struct sdma_engine {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct sdma_engine*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct sdma_engine *sde, char *buf)
{
	int vl;

	vl = FUNC0(sde);
	if (vl < 0)
		return vl;

	return FUNC1(buf, PAGE_SIZE, "%d\n", vl);
}
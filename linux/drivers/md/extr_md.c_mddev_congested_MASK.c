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
struct mddev {scalar_t__ suspended; struct md_personality* pers; } ;
struct md_personality {int (* congested ) (struct mddev*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct mddev*,int) ; 

int FUNC3(struct mddev *mddev, int bits)
{
	struct md_personality *pers = mddev->pers;
	int ret = 0;

	FUNC0();
	if (mddev->suspended)
		ret = 1;
	else if (pers && pers->congested)
		ret = pers->congested(mddev, bits);
	FUNC1();
	return ret;
}
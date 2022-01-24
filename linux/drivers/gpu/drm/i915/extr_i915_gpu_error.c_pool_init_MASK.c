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
struct pagevec {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC1 (struct pagevec*) ; 
 int FUNC2 (struct pagevec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pagevec *pv, gfp_t gfp)
{
	int err;

	FUNC0(pv);

	err = FUNC2(pv, gfp);
	if (err)
		FUNC1(pv);

	return err;
}
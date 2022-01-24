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
struct r5conf {int dummy; } ;
struct md_rdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct r5conf*) ; 
 int FUNC1 (struct r5conf*,struct md_rdev*) ; 

__attribute__((used)) static inline int FUNC2(struct r5conf *conf, struct md_rdev *journal_dev,
			   bool ppl)
{
	if (journal_dev)
		return FUNC1(conf, journal_dev);
	else if (ppl)
		return FUNC0(conf);

	return 0;
}
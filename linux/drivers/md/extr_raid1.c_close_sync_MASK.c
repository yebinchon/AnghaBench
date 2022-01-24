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
struct r1conf {int /*<<< orphan*/  r1buf_pool; } ;

/* Variables and functions */
 int BARRIER_BUCKETS_NR ; 
 int /*<<< orphan*/  FUNC0 (struct r1conf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct r1conf*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct r1conf *conf)
{
	int idx;

	for (idx = 0; idx < BARRIER_BUCKETS_NR; idx++) {
		FUNC1(conf, idx);
		FUNC0(conf, idx);
	}

	FUNC2(&conf->r1buf_pool);
}
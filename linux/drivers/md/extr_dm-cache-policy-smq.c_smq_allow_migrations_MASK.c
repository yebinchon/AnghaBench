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
struct smq_policy {int migrations_allowed; } ;
struct dm_cache_policy {int dummy; } ;

/* Variables and functions */
 struct smq_policy* FUNC0 (struct dm_cache_policy*) ; 

__attribute__((used)) static void FUNC1(struct dm_cache_policy *p, bool allow)
{
	struct smq_policy *mq = FUNC0(p);
	mq->migrations_allowed = allow;
}
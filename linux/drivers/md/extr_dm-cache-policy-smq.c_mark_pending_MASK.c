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
struct smq_policy {int dummy; } ;
struct entry {int sentinel; int pending_work; int /*<<< orphan*/  allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct smq_policy *mq, struct entry *e)
{
	FUNC0(e->sentinel);
	FUNC0(!e->allocated);
	FUNC0(e->pending_work);
	e->pending_work = true;
}
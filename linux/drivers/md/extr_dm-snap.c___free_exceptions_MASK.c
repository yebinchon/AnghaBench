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
struct dm_snapshot {int /*<<< orphan*/  complete; int /*<<< orphan*/  pending; int /*<<< orphan*/ * kcopyd_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception_cache ; 
 int /*<<< orphan*/  pending_cache ; 

__attribute__((used)) static void FUNC2(struct dm_snapshot *s)
{
	FUNC1(s->kcopyd_client);
	s->kcopyd_client = NULL;

	FUNC0(&s->pending, pending_cache);
	FUNC0(&s->complete, exception_cache);
}
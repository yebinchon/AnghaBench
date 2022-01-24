#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct sx8654 {TYPE_1__* client; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct sx8654* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct sx8654*) ; 
 int /*<<< orphan*/  timer ; 
 struct sx8654* ts ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct sx8654 *ts = FUNC1(ts, t, timer);
	unsigned long flags;

	FUNC2(&ts->lock, flags);
	FUNC4(ts);
	FUNC3(&ts->lock, flags);
	FUNC0(&ts->client->dev, "penrelease by timer\n");
}
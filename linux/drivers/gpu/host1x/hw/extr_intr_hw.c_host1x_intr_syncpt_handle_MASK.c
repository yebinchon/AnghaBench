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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct host1x_syncpt {unsigned int id; TYPE_1__ intr; struct host1x* host; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct host1x_syncpt *syncpt)
{
	unsigned int id = syncpt->id;
	struct host1x *host = syncpt->host;

	FUNC3(host, FUNC0(id % 32),
		FUNC2(id / 32));
	FUNC3(host, FUNC0(id % 32),
		FUNC1(id / 32));

	FUNC4(&syncpt->intr.work);
}
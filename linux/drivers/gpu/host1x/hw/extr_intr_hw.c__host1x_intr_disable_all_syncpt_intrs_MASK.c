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
struct host1x {TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  nb_pts; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct host1x *host)
{
	unsigned int i;

	for (i = 0; i < FUNC0(host->info->nb_pts, 32); ++i) {
		FUNC3(host, 0xffffffffu,
			FUNC2(i));
		FUNC3(host, 0xffffffffu,
			FUNC1(i));
	}
}
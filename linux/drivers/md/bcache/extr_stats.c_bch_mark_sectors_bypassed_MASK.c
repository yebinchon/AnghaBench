#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sectors_bypassed; } ;
struct TYPE_6__ {TYPE_1__ collector; } ;
struct cached_dev {TYPE_2__ accounting; } ;
struct TYPE_7__ {int /*<<< orphan*/  sectors_bypassed; } ;
struct TYPE_8__ {TYPE_3__ collector; } ;
struct cache_set {TYPE_4__ accounting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

void FUNC1(struct cache_set *c, struct cached_dev *dc,
			       int sectors)
{
	FUNC0(sectors, &dc->accounting.collector.sectors_bypassed);
	FUNC0(sectors, &c->accounting.collector.sectors_bypassed);
}
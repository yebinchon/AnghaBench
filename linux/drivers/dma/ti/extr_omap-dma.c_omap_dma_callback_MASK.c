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
typedef  int /*<<< orphan*/  u16 ;
struct omap_desc {scalar_t__ sglen; int /*<<< orphan*/  vd; scalar_t__ using_ll; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct omap_chan {scalar_t__ sgidx; TYPE_1__ vc; scalar_t__ cyclic; struct omap_desc* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_chan*,struct omap_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(int ch, u16 status, void *data)
{
	struct omap_chan *c = data;
	struct omap_desc *d;
	unsigned long flags;

	FUNC2(&c->vc.lock, flags);
	d = c->desc;
	if (d) {
		if (c->cyclic) {
			FUNC5(&d->vd);
		} else if (d->using_ll || c->sgidx == d->sglen) {
			FUNC0(c);
			FUNC4(&d->vd);
		} else {
			FUNC1(c, d);
		}
	}
	FUNC3(&c->vc.lock, flags);
}
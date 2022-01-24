#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct parport {scalar_t__ number; } ;
struct pardevice {int dummy; } ;
struct pardev_cb {int /*<<< orphan*/  flags; } ;
struct gc {scalar_t__ parportno; TYPE_1__* pads; int /*<<< orphan*/  timer; struct pardevice* pd; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  gc_parport_cb ;
struct TYPE_4__ {int nargs; scalar_t__* args; } ;
struct TYPE_3__ {scalar_t__ dev; } ;

/* Variables and functions */
 int GC_MAX_DEVICES ; 
 int GC_MAX_PORTS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PARPORT_FLAG_EXCL ; 
 struct gc** gc_base ; 
 TYPE_2__* gc_cfg ; 
 scalar_t__ FUNC0 (struct gc*,int,int) ; 
 int /*<<< orphan*/  gc_timer ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gc*) ; 
 struct gc* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pardev_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct pardevice* FUNC6 (struct parport*,char*,struct pardev_cb*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct parport *pp)
{
	struct gc *gc;
	struct pardevice *pd;
	int i, port_idx;
	int count = 0;
	int *pads, n_pads;
	struct pardev_cb gc_parport_cb;

	for (port_idx = 0; port_idx < GC_MAX_PORTS; port_idx++) {
		if (gc_cfg[port_idx].nargs == 0 || gc_cfg[port_idx].args[0] < 0)
			continue;

		if (gc_cfg[port_idx].args[0] == pp->number)
			break;
	}

	if (port_idx == GC_MAX_PORTS) {
		FUNC8("Not using parport%d.\n", pp->number);
		return;
	}
	pads = gc_cfg[port_idx].args + 1;
	n_pads = gc_cfg[port_idx].nargs - 1;

	FUNC4(&gc_parport_cb, 0, sizeof(gc_parport_cb));
	gc_parport_cb.flags = PARPORT_FLAG_EXCL;

	pd = FUNC6(pp, "gamecon", &gc_parport_cb,
					port_idx);
	if (!pd) {
		FUNC9("parport busy already - lp.o loaded?\n");
		return;
	}

	gc = FUNC3(sizeof(struct gc), GFP_KERNEL);
	if (!gc) {
		FUNC9("Not enough memory\n");
		goto err_unreg_pardev;
	}

	FUNC5(&gc->mutex);
	gc->pd = pd;
	gc->parportno = pp->number;
	FUNC10(&gc->timer, gc_timer, 0);

	for (i = 0; i < n_pads && i < GC_MAX_DEVICES; i++) {
		if (!pads[i])
			continue;

		if (FUNC0(gc, i, pads[i]))
			goto err_unreg_devs;

		count++;
	}

	if (count == 0) {
		FUNC9("No valid devices specified\n");
		goto err_free_gc;
	}

	gc_base[port_idx] = gc;
	return;

 err_unreg_devs:
	while (--i >= 0)
		if (gc->pads[i].dev)
			FUNC1(gc->pads[i].dev);
 err_free_gc:
	FUNC2(gc);
 err_unreg_pardev:
	FUNC7(pd);
}
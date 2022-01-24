#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;
struct TYPE_6__ {TYPE_1__ dmx; } ;
struct flexcop_device {int init_state; int /*<<< orphan*/  dvb_adapter; TYPE_4__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/  mem_frontend; int /*<<< orphan*/  dvbnet; } ;

/* Variables and functions */
 int FC_STATE_DVB_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct flexcop_device *fc)
{
	if (fc->init_state & FC_STATE_DVB_INIT) {
		FUNC3(&fc->dvbnet);

		fc->demux.dmx.close(&fc->demux.dmx);
		fc->demux.dmx.remove_frontend(&fc->demux.dmx,
			&fc->mem_frontend);
		fc->demux.dmx.remove_frontend(&fc->demux.dmx,
			&fc->hw_frontend);
		FUNC2(&fc->dmxdev);
		FUNC1(&fc->demux);
		FUNC4(&fc->dvb_adapter);
		FUNC0("deinitialized dvb stuff\n");
	}
	fc->init_state &= ~FC_STATE_DVB_INIT;
}
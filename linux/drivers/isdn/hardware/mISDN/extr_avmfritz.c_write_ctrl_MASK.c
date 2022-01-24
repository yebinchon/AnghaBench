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
struct TYPE_2__ {int /*<<< orphan*/  ctrl; } ;
struct hdlc_hw {TYPE_1__ ctrl; } ;
struct fritzcard {int type; int /*<<< orphan*/  name; struct hdlc_hw* hdlc; } ;
struct bchannel {int nr; struct fritzcard* hw; } ;

/* Variables and functions */
#define  AVM_FRITZ_PCI 129 
#define  AVM_FRITZ_PCIV2 128 
 int /*<<< orphan*/  FUNC0 (struct fritzcard*,struct hdlc_hw*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct fritzcard*,struct hdlc_hw*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bchannel *bch, int which) {
	struct fritzcard *fc = bch->hw;
	struct hdlc_hw *hdlc;

	hdlc = &fc->hdlc[(bch->nr - 1) & 1];
	FUNC2("%s: hdlc %c wr%x ctrl %x\n", fc->name, '@' + bch->nr,
		 which, hdlc->ctrl.ctrl);
	switch (fc->type) {
	case AVM_FRITZ_PCIV2:
		FUNC1(fc, hdlc, bch->nr);
		break;
	case AVM_FRITZ_PCI:
		FUNC0(fc, hdlc, bch->nr);
		break;
	}
}
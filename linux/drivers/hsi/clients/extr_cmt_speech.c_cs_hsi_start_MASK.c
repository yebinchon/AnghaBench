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
struct hsi_client {int /*<<< orphan*/  device; } ;
struct cs_mmap_config_block {int dummy; } ;
struct cs_hsi_iface {unsigned long mmap_base; unsigned long mmap_size; int /*<<< orphan*/  iface_state; int /*<<< orphan*/  master; int /*<<< orphan*/  datawait; struct cs_mmap_config_block* mmap_cfg; struct hsi_client* cl; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CS_STATE_CLOSED ; 
 int /*<<< orphan*/  CS_STATE_OPENED ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct cs_hsi_iface*) ; 
 int FUNC5 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC6 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC7 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (struct hsi_client*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct cs_hsi_iface*) ; 
 struct cs_hsi_iface* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct cs_mmap_config_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct cs_hsi_iface **hi, struct hsi_client *cl,
			unsigned long mmap_base, unsigned long mmap_size)
{
	int err = 0;
	struct cs_hsi_iface *hsi_if = FUNC14(sizeof(*hsi_if), GFP_KERNEL);

	FUNC8(&cl->device, "cs_hsi_start\n");

	if (!hsi_if) {
		err = -ENOMEM;
		goto leave0;
	}
	FUNC18(&hsi_if->lock);
	hsi_if->cl = cl;
	hsi_if->iface_state = CS_STATE_CLOSED;
	hsi_if->mmap_cfg = (struct cs_mmap_config_block *)mmap_base;
	hsi_if->mmap_base = mmap_base;
	hsi_if->mmap_size = mmap_size;
	FUNC17(hsi_if->mmap_cfg, 0, sizeof(*hsi_if->mmap_cfg));
	FUNC12(&hsi_if->datawait);
	err = FUNC3(hsi_if);
	if (err < 0) {
		FUNC9(&cl->device, "Unable to alloc HSI messages\n");
		goto leave1;
	}
	err = FUNC5(hsi_if);
	if (err < 0) {
		FUNC9(&cl->device, "Unable to alloc HSI messages for data\n");
		goto leave2;
	}
	err = FUNC10(cl, 1);
	if (err < 0) {
		FUNC9(&cl->device,
				"Could not open, HSI port already claimed\n");
		goto leave3;
	}
	hsi_if->master = FUNC19(cl);
	if (FUNC1(hsi_if->master)) {
		err = FUNC2(hsi_if->master);
		FUNC9(&cl->device, "Could not get HSI master client\n");
		goto leave4;
	}
	if (!FUNC20(hsi_if->master)) {
		err = -ENODEV;
		FUNC9(&cl->device,
				"HSI port not initialized\n");
		goto leave4;
	}

	hsi_if->iface_state = CS_STATE_OPENED;
	FUNC15();
	FUNC7(hsi_if);
	FUNC16();

	FUNC8(&cl->device, "cs_hsi_start...done\n");

	FUNC0(!hi);
	*hi = hsi_if;

	return 0;

leave4:
	FUNC11(cl);
leave3:
	FUNC6(hsi_if);
leave2:
	FUNC4(hsi_if);
leave1:
	FUNC13(hsi_if);
leave0:
	FUNC8(&cl->device, "cs_hsi_start...done/error\n\n");

	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct i40iw_sc_dev {int /*<<< orphan*/  hmc_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  pestat; } ;
struct i40iw_device {int init_state; int /*<<< orphan*/  hdl; TYPE_1__ vsi; int /*<<< orphan*/  cm_core; int /*<<< orphan*/  reset; int /*<<< orphan*/  pble_rsrc; int /*<<< orphan*/  mac_ip_table_idx; int /*<<< orphan*/  iwibdev; int /*<<< orphan*/  iw_status; scalar_t__ param_wq; struct i40iw_sc_dev sc_dev; struct i40e_info* ldev; } ;
struct i40e_info {int dummy; } ;

/* Variables and functions */
#define  AEQ_CREATED 139 
#define  CCQ_CREATED 138 
#define  CEQ_CREATED 137 
#define  CQP_CREATED 136 
#define  HMC_OBJS_CREATED 135 
 int /*<<< orphan*/  I40IW_PUDA_RSRC_TYPE_IEQ ; 
 int /*<<< orphan*/  I40IW_PUDA_RSRC_TYPE_ILQ ; 
#define  IEQ_CREATED 134 
#define  ILQ_CREATED 133 
#define  INITIAL_STATE 132 
#define  INVALID_STATE 131 
#define  IP_ADDR_REGISTERED 130 
#define  PBLE_CHUNK_MEM 129 
#define  RDMA_DEV_REGISTERED 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct i40iw_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i40iw_sc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i40e_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct i40iw_device *iwdev)
{
	struct i40e_info *ldev = iwdev->ldev;

	struct i40iw_sc_dev *dev = &iwdev->sc_dev;

	FUNC15("state = %d\n", iwdev->init_state);
	if (iwdev->param_wq)
		FUNC0(iwdev->param_wq);

	switch (iwdev->init_state) {
	case RDMA_DEV_REGISTERED:
		iwdev->iw_status = 0;
		FUNC13(iwdev);
		FUNC11(iwdev->iwibdev);
		/* fallthrough */
	case IP_ADDR_REGISTERED:
		if (!iwdev->reset)
			FUNC5(iwdev, (u8)iwdev->mac_ip_table_idx);
		/* fallthrough */
		/* fallthrough */
	case PBLE_CHUNK_MEM:
		FUNC10(dev, iwdev->pble_rsrc);
		/* fallthrough */
	case CEQ_CREATED:
		FUNC6(iwdev);
		/* fallthrough */
	case AEQ_CREATED:
		FUNC7(iwdev);
		/* fallthrough */
	case IEQ_CREATED:
		FUNC16(&iwdev->vsi, I40IW_PUDA_RSRC_TYPE_IEQ, iwdev->reset);
		/* fallthrough */
	case ILQ_CREATED:
		FUNC16(&iwdev->vsi, I40IW_PUDA_RSRC_TYPE_ILQ, iwdev->reset);
		/* fallthrough */
	case CCQ_CREATED:
		FUNC8(iwdev);
		/* fallthrough */
	case HMC_OBJS_CREATED:
		FUNC3(dev, dev->hmc_info, true, iwdev->reset);
		/* fallthrough */
	case CQP_CREATED:
		FUNC9(iwdev, true);
		/* fallthrough */
	case INITIAL_STATE:
		FUNC1(&iwdev->cm_core);
		if (iwdev->vsi.pestat) {
			FUNC17(&iwdev->vsi);
			FUNC18(iwdev->vsi.pestat);
		}
		FUNC4(iwdev);
		break;
	case INVALID_STATE:
		/* fallthrough */
	default:
		FUNC14("bad init_state = %d\n", iwdev->init_state);
		break;
	}

	FUNC2(FUNC12(ldev));
	FUNC18(iwdev->hdl);
}
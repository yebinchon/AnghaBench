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
struct i40iw_sc_dev {int /*<<< orphan*/  ccq; TYPE_1__* ccq_ops; int /*<<< orphan*/  hw; scalar_t__ is_pf; void* back_dev; } ;
struct i40iw_device {int iw_status; int /*<<< orphan*/  init_state; int /*<<< orphan*/ * param_wq; void* virtchnl_wq; int /*<<< orphan*/  pble_rsrc; struct i40iw_sc_dev sc_dev; int /*<<< orphan*/  pbl_mutex; struct i40e_client* client; int /*<<< orphan*/ * ldev; struct i40iw_handler* hdl; } ;
struct i40iw_handler {int /*<<< orphan*/  ldev; struct i40iw_device device; } ;
struct i40e_info {int /*<<< orphan*/  netdev; } ;
struct i40e_client {int dummy; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int /*<<< orphan*/  (* ccq_arm ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AEQ_CREATED ; 
 int /*<<< orphan*/  CCQ_CREATED ; 
 int /*<<< orphan*/  CEQ_CREATED ; 
 int /*<<< orphan*/  CQP_CREATED ; 
 int ENOMEM ; 
 int ERESTART ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEQ_CREATED ; 
 int /*<<< orphan*/  ILQ_CREATED ; 
 int /*<<< orphan*/  INITIAL_STATE ; 
 int /*<<< orphan*/  IP_ADDR_REGISTERED ; 
 int /*<<< orphan*/  PBLE_CHUNK_MEM ; 
 int /*<<< orphan*/  RDMA_DEV_REGISTERED ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_handler*) ; 
 int FUNC2 (struct i40iw_device*) ; 
 int FUNC3 (struct i40iw_device*) ; 
 int FUNC4 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_device*) ; 
 struct i40iw_handler* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i40iw_device*) ; 
 int FUNC8 (struct i40iw_sc_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct i40iw_device*) ; 
 int FUNC10 (struct i40iw_device*) ; 
 int FUNC11 (struct i40iw_device*) ; 
 int FUNC12 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (struct i40iw_device*) ; 
 int FUNC17 (struct i40iw_device*) ; 
 int FUNC18 (struct i40iw_device*,struct i40e_info*) ; 
 scalar_t__ FUNC19 (struct i40iw_device*) ; 
 int FUNC20 (struct i40iw_handler*,struct i40e_info*,struct i40e_client*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct i40iw_handler*) ; 
 struct i40iw_handler* FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct i40e_info *ldev, struct i40e_client *client)
{
	struct i40iw_device *iwdev;
	struct i40iw_sc_dev *dev;
	enum i40iw_status_code status;
	struct i40iw_handler *hdl;

	hdl = FUNC6(ldev->netdev);
	if (hdl)
		return 0;

	hdl = FUNC23(sizeof(*hdl), GFP_KERNEL);
	if (!hdl)
		return -ENOMEM;
	iwdev = &hdl->device;
	iwdev->hdl = hdl;
	dev = &iwdev->sc_dev;
	if (FUNC19(iwdev)) {
		FUNC22(iwdev->hdl);
		return -ENOMEM;
	}

	dev->back_dev = (void *)iwdev;
	iwdev->ldev = &hdl->ldev;
	iwdev->client = client;
	FUNC24(&iwdev->pbl_mutex);
	FUNC1(hdl);

	do {
		status = FUNC20(hdl, ldev, client);
		if (status)
			break;
		iwdev->init_state = INITIAL_STATE;
		if (dev->is_pf)
			FUNC21(dev->hw);
		status = FUNC4(iwdev);
		if (status)
			break;
		iwdev->init_state = CQP_CREATED;
		status = FUNC9(iwdev);
		if (status)
			break;
		status = FUNC3(iwdev);
		if (status)
			break;
		iwdev->init_state = CCQ_CREATED;
		status = FUNC12(iwdev);
		if (status)
			break;
		iwdev->init_state = ILQ_CREATED;
		status = FUNC11(iwdev);
		if (status)
			break;
		iwdev->init_state = IEQ_CREATED;
		status = FUNC17(iwdev);
		if (status)
			break;
		iwdev->init_state = AEQ_CREATED;
		status = FUNC18(iwdev, ldev);
		if (status)
			break;
		iwdev->init_state = CEQ_CREATED;
		status = FUNC10(iwdev);
		if (status)
			break;
		FUNC7(iwdev);
		dev->ccq_ops->ccq_arm(dev->ccq);
		status = FUNC8(&iwdev->sc_dev, iwdev->pble_rsrc);
		if (status)
			break;
		iwdev->init_state = PBLE_CHUNK_MEM;
		iwdev->virtchnl_wq = FUNC0("iwvch", WQ_MEM_RECLAIM);
		status = FUNC2(iwdev);
		if (status)
			break;
		iwdev->init_state = IP_ADDR_REGISTERED;
		if (FUNC16(iwdev)) {
			FUNC14("register rdma device fail\n");
			break;
		};

		iwdev->init_state = RDMA_DEV_REGISTERED;
		iwdev->iw_status = 1;
		FUNC13(iwdev);
		iwdev->param_wq = FUNC0("l2params", WQ_MEM_RECLAIM);
		if(iwdev->param_wq == NULL)
			break;
		FUNC15("i40iw_open completed\n");
		return 0;
	} while (0);

	FUNC14("status = %d last completion = %d\n", status, iwdev->init_state);
	FUNC5(iwdev);
	return -ERESTART;
}
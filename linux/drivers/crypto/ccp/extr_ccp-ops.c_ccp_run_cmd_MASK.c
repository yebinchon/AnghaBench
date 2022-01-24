#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ccp_cmd_queue {TYPE_3__* ccp; int /*<<< orphan*/  free_slots; scalar_t__ int_rcvd; scalar_t__ cmd_error; } ;
struct TYPE_9__ {int /*<<< orphan*/  mode; } ;
struct TYPE_10__ {TYPE_4__ aes; } ;
struct ccp_cmd {int engine; int flags; TYPE_5__ u; scalar_t__ engine_error; } ;
struct TYPE_8__ {TYPE_2__* vdata; } ;
struct TYPE_7__ {TYPE_1__* perform; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_free_slots ) (struct ccp_cmd_queue*) ;} ;

/* Variables and functions */
#define  CCP_AES_MODE_CMAC 136 
#define  CCP_AES_MODE_GCM 135 
 int CCP_CMD_PASSTHRU_NO_DMA_MAP ; 
#define  CCP_ENGINE_AES 134 
#define  CCP_ENGINE_DES3 133 
#define  CCP_ENGINE_ECC 132 
#define  CCP_ENGINE_PASSTHRU 131 
#define  CCP_ENGINE_RSA 130 
#define  CCP_ENGINE_SHA 129 
#define  CCP_ENGINE_XTS_AES_128 128 
 int EINVAL ; 
 int FUNC0 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC1 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC2 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC3 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC4 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC5 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC6 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC7 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC8 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int FUNC9 (struct ccp_cmd_queue*,struct ccp_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct ccp_cmd_queue*) ; 

int FUNC11(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
{
	int ret;

	cmd->engine_error = 0;
	cmd_q->cmd_error = 0;
	cmd_q->int_rcvd = 0;
	cmd_q->free_slots = cmd_q->ccp->vdata->perform->get_free_slots(cmd_q);

	switch (cmd->engine) {
	case CCP_ENGINE_AES:
		switch (cmd->u.aes.mode) {
		case CCP_AES_MODE_CMAC:
			ret = FUNC0(cmd_q, cmd);
			break;
		case CCP_AES_MODE_GCM:
			ret = FUNC2(cmd_q, cmd);
			break;
		default:
			ret = FUNC1(cmd_q, cmd);
			break;
		}
		break;
	case CCP_ENGINE_XTS_AES_128:
		ret = FUNC9(cmd_q, cmd);
		break;
	case CCP_ENGINE_DES3:
		ret = FUNC3(cmd_q, cmd);
		break;
	case CCP_ENGINE_SHA:
		ret = FUNC8(cmd_q, cmd);
		break;
	case CCP_ENGINE_RSA:
		ret = FUNC7(cmd_q, cmd);
		break;
	case CCP_ENGINE_PASSTHRU:
		if (cmd->flags & CCP_CMD_PASSTHRU_NO_DMA_MAP)
			ret = FUNC6(cmd_q, cmd);
		else
			ret = FUNC5(cmd_q, cmd);
		break;
	case CCP_ENGINE_ECC:
		ret = FUNC4(cmd_q, cmd);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}
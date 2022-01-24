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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct i40iw_vsi_pestat {int /*<<< orphan*/  hw_stats; } ;
struct i40iw_virtchnl_work_info {int /*<<< orphan*/  callback_fcn; struct i40iw_vfdev* worker_vf_dev; } ;
struct i40iw_virtchnl_op_buf {int iw_op_code; } ;
struct i40iw_virt_mem {struct i40iw_vfdev* va; } ;
struct TYPE_4__ {int /*<<< orphan*/  vchnl_msg; } ;
struct TYPE_3__ {struct i40iw_hmc_obj_info* hmc_obj; } ;
struct i40iw_vfdev {scalar_t__ vf_id; int msg_count; int stats_initialized; size_t iw_vf_idx; int pf_hmc_initialized; struct i40iw_vsi_pestat pestat; TYPE_2__ vf_msg_buffer; int /*<<< orphan*/  pmf_index; TYPE_1__ hmc_info; struct i40iw_sc_dev* pf_dev; } ;
struct i40iw_sc_dev {struct i40iw_vfdev** vf_dev; int /*<<< orphan*/  hw; int /*<<< orphan*/  vchnl_up; } ;
struct i40iw_hmc_obj_info {int dummy; } ;
struct i40iw_hmc_fcn_info {size_t iw_vf_idx; int free_fcn; struct i40iw_vfdev* cqp_callback_param; scalar_t__ vf_id; int /*<<< orphan*/  callback_fcn; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_DEBUG_VIRT ; 
 int I40IW_ERR_BAD_PTR ; 
 int /*<<< orphan*/  I40IW_ERR_NOT_IMPLEMENTED ; 
 int I40IW_ERR_NOT_READY ; 
 int /*<<< orphan*/  I40IW_ERR_NO_MEMORY ; 
 int I40IW_ERR_PARAM ; 
 int I40IW_HMC_IW_MAX ; 
 size_t I40IW_MAX_PE_ENABLED_VF_COUNT ; 
 int I40IW_SUCCESS ; 
#define  I40IW_VCHNL_OP_ADD_HMC_OBJ_RANGE 131 
#define  I40IW_VCHNL_OP_DEL_HMC_OBJ_RANGE 130 
#define  I40IW_VCHNL_OP_GET_HMC_FCN 129 
#define  I40IW_VCHNL_OP_GET_STATS 128 
 int I40IW_VCHNL_OP_GET_VER ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i40iw_virt_mem*,int) ; 
 int FUNC1 (struct i40iw_sc_dev*,struct i40iw_hmc_fcn_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_sc_dev*,struct i40iw_virtchnl_work_info*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_dev*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_vsi_pestat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_sc_dev*,struct i40iw_vsi_pestat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct i40iw_virtchnl_op_buf*,size_t) ; 
 int /*<<< orphan*/  pf_add_hmc_obj_callback ; 
 int /*<<< orphan*/  pf_cqp_get_hmc_fcn_callback ; 
 int /*<<< orphan*/  pf_del_hmc_obj_callback ; 
 int /*<<< orphan*/  FUNC7 (struct i40iw_sc_dev*,scalar_t__,struct i40iw_virtchnl_op_buf*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct i40iw_sc_dev*,scalar_t__,struct i40iw_virtchnl_op_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i40iw_sc_dev*,scalar_t__,struct i40iw_virtchnl_op_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct i40iw_sc_dev*,scalar_t__,struct i40iw_virtchnl_op_buf*) ; 

enum i40iw_status_code FUNC11(struct i40iw_sc_dev *dev,
					   u32 vf_id,
					   u8 *msg,
					   u16 len)
{
	struct i40iw_virtchnl_op_buf *vchnl_msg = (struct i40iw_virtchnl_op_buf *)msg;
	struct i40iw_vfdev *vf_dev = NULL;
	struct i40iw_hmc_fcn_info hmc_fcn_info;
	u16 iw_vf_idx;
	u16 first_avail_iw_vf = I40IW_MAX_PE_ENABLED_VF_COUNT;
	struct i40iw_virt_mem vf_dev_mem;
	struct i40iw_virtchnl_work_info work_info;
	struct i40iw_vsi_pestat *stats;
	enum i40iw_status_code ret_code;

	if (!dev || !msg || !len)
		return I40IW_ERR_PARAM;

	if (!dev->vchnl_up)
		return I40IW_ERR_NOT_READY;
	if (vchnl_msg->iw_op_code == I40IW_VCHNL_OP_GET_VER) {
		FUNC10(dev, vf_id, vchnl_msg);
		return I40IW_SUCCESS;
	}
	for (iw_vf_idx = 0; iw_vf_idx < I40IW_MAX_PE_ENABLED_VF_COUNT; iw_vf_idx++) {
		if (!dev->vf_dev[iw_vf_idx]) {
			if (first_avail_iw_vf == I40IW_MAX_PE_ENABLED_VF_COUNT)
				first_avail_iw_vf = iw_vf_idx;
			continue;
		}
		if (dev->vf_dev[iw_vf_idx]->vf_id == vf_id) {
			vf_dev = dev->vf_dev[iw_vf_idx];
			break;
		}
	}
	if (vf_dev) {
		if (!vf_dev->msg_count) {
			vf_dev->msg_count++;
		} else {
			FUNC3(dev, I40IW_DEBUG_VIRT,
				    "VF%u already has a channel message in progress.\n",
				    vf_id);
			return I40IW_SUCCESS;
		}
	}
	switch (vchnl_msg->iw_op_code) {
	case I40IW_VCHNL_OP_GET_HMC_FCN:
		if (!vf_dev &&
		    (first_avail_iw_vf != I40IW_MAX_PE_ENABLED_VF_COUNT)) {
			ret_code = FUNC0(dev->hw, &vf_dev_mem, sizeof(struct i40iw_vfdev) +
							   (sizeof(struct i40iw_hmc_obj_info) * I40IW_HMC_IW_MAX));
			if (!ret_code) {
				vf_dev = vf_dev_mem.va;
				vf_dev->stats_initialized = false;
				vf_dev->pf_dev = dev;
				vf_dev->msg_count = 1;
				vf_dev->vf_id = vf_id;
				vf_dev->iw_vf_idx = first_avail_iw_vf;
				vf_dev->pf_hmc_initialized = false;
				vf_dev->hmc_info.hmc_obj = (struct i40iw_hmc_obj_info *)(&vf_dev[1]);
				FUNC3(dev, I40IW_DEBUG_VIRT,
					    "vf_dev %p, hmc_info %p, hmc_obj %p\n",
					    vf_dev, &vf_dev->hmc_info, vf_dev->hmc_info.hmc_obj);
				dev->vf_dev[first_avail_iw_vf] = vf_dev;
				iw_vf_idx = first_avail_iw_vf;
			} else {
				FUNC3(dev, I40IW_DEBUG_VIRT,
					    "VF%u Unable to allocate a VF device structure.\n",
					    vf_id);
				FUNC7(dev, vf_id, vchnl_msg, (u16)I40IW_ERR_NO_MEMORY);
				return I40IW_SUCCESS;
			}
			FUNC6(&vf_dev->vf_msg_buffer.vchnl_msg, vchnl_msg, len);
			hmc_fcn_info.callback_fcn = pf_cqp_get_hmc_fcn_callback;
			hmc_fcn_info.vf_id = vf_id;
			hmc_fcn_info.iw_vf_idx = vf_dev->iw_vf_idx;
			hmc_fcn_info.cqp_callback_param = vf_dev;
			hmc_fcn_info.free_fcn = false;
			ret_code = FUNC1(dev, &hmc_fcn_info);
			if (ret_code)
				FUNC3(dev, I40IW_DEBUG_VIRT,
					    "VF%u error CQP HMC Function operation.\n",
					    vf_id);
			FUNC5(dev, &vf_dev->pestat, vf_dev->pmf_index);
			vf_dev->stats_initialized = true;
		} else {
			if (vf_dev) {
				vf_dev->msg_count--;
				FUNC8(dev, vf_id, vchnl_msg, vf_dev->pmf_index);
			} else {
				FUNC7(dev, vf_id, vchnl_msg,
							 (u16)I40IW_ERR_NO_MEMORY);
			}
		}
		break;
	case I40IW_VCHNL_OP_ADD_HMC_OBJ_RANGE:
		if (!vf_dev)
			return I40IW_ERR_BAD_PTR;
		work_info.worker_vf_dev = vf_dev;
		work_info.callback_fcn = pf_add_hmc_obj_callback;
		FUNC6(&vf_dev->vf_msg_buffer.vchnl_msg, vchnl_msg, len);
		FUNC2(dev, &work_info, vf_dev->iw_vf_idx);
		break;
	case I40IW_VCHNL_OP_DEL_HMC_OBJ_RANGE:
		if (!vf_dev)
			return I40IW_ERR_BAD_PTR;
		work_info.worker_vf_dev = vf_dev;
		work_info.callback_fcn = pf_del_hmc_obj_callback;
		FUNC6(&vf_dev->vf_msg_buffer.vchnl_msg, vchnl_msg, len);
		FUNC2(dev, &work_info, vf_dev->iw_vf_idx);
		break;
	case I40IW_VCHNL_OP_GET_STATS:
		if (!vf_dev)
			return I40IW_ERR_BAD_PTR;
		stats = &vf_dev->pestat;
		FUNC4(stats, &stats->hw_stats);
		vf_dev->msg_count--;
		FUNC9(dev, vf_id, vchnl_msg, &stats->hw_stats);
		break;
	default:
		FUNC3(dev, I40IW_DEBUG_VIRT,
			    "40iw_vchnl_recv_pf: Invalid OpCode 0x%x\n",
			    vchnl_msg->iw_op_code);
		FUNC7(dev, vf_id,
					 vchnl_msg, (u16)I40IW_ERR_NOT_IMPLEMENTED);
	}
	return I40IW_SUCCESS;
}
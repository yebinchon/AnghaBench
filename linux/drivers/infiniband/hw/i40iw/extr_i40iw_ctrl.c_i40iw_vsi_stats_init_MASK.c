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
typedef  scalar_t__ u8 ;
struct i40iw_vsi_stats_info {scalar_t__ fcn_id; scalar_t__ alloc_fcn_id; scalar_t__ stats_initialize; TYPE_1__* pestat; } ;
struct i40iw_sc_vsi {scalar_t__ fcn_id; scalar_t__ stats_fcn_id_alloc; TYPE_1__* pestat; TYPE_2__* dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {int /*<<< orphan*/  hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct i40iw_sc_vsi* vsi; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int I40IW_ERR_NOT_READY ; 
 scalar_t__ I40IW_INVALID_FCN_ID ; 
 int I40IW_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_sc_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

enum i40iw_status_code FUNC4(struct i40iw_sc_vsi *vsi, struct i40iw_vsi_stats_info *info)
{
	u8 fcn_id = info->fcn_id;

	if (info->alloc_fcn_id)
		fcn_id = FUNC0(vsi->dev);

	if (fcn_id == I40IW_INVALID_FCN_ID)
		return I40IW_ERR_NOT_READY;

	vsi->pestat = info->pestat;
	vsi->pestat->hw = vsi->dev->hw;
	vsi->pestat->vsi = vsi;

	if (info->stats_initialize) {
		FUNC1(vsi->pestat, fcn_id, true);
		FUNC3(&vsi->pestat->lock);
		FUNC2(vsi);
	}
	vsi->stats_fcn_id_alloc = info->alloc_fcn_id;
	vsi->fcn_id = fcn_id;
	return I40IW_SUCCESS;
}
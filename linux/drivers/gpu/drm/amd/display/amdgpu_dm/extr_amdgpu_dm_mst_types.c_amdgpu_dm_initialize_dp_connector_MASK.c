#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* name; int /*<<< orphan*/  transfer; int /*<<< orphan*/  dev; } ;
struct TYPE_12__ {TYPE_6__ aux; int /*<<< orphan*/  ddc_service; } ;
struct TYPE_13__ {int /*<<< orphan*/ * cbs; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; int /*<<< orphan*/  kdev; } ;
struct amdgpu_dm_connector {int /*<<< orphan*/  connector_id; TYPE_4__ dm_dp_aux; TYPE_5__ mst_mgr; TYPE_2__ base; TYPE_1__* dc_link; } ;
struct amdgpu_display_manager {TYPE_3__* adev; } ;
struct TYPE_11__ {int /*<<< orphan*/  ddev; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  ddc; } ;

/* Variables and functions */
 int /*<<< orphan*/  dm_dp_aux_transfer ; 
 int /*<<< orphan*/  dm_mst_cbs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_6__*,int,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct amdgpu_display_manager *dm,
				       struct amdgpu_dm_connector *aconnector)
{
	aconnector->dm_dp_aux.aux.name = "dmdc";
	aconnector->dm_dp_aux.aux.dev = aconnector->base.kdev;
	aconnector->dm_dp_aux.aux.transfer = dm_dp_aux_transfer;
	aconnector->dm_dp_aux.ddc_service = aconnector->dc_link->ddc;

	FUNC0(&aconnector->dm_dp_aux.aux);
	FUNC1(&aconnector->dm_dp_aux.aux,
				      aconnector->base.name, dm->adev->dev);
	aconnector->mst_mgr.cbs = &dm_mst_cbs;
	FUNC2(
		&aconnector->mst_mgr,
		dm->adev->ddev,
		&aconnector->dm_dp_aux.aux,
		16,
		4,
		aconnector->connector_id);
}
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
struct drm_connector {int dummy; } ;
struct amdgpu_dm_connector {int /*<<< orphan*/  port; int /*<<< orphan*/  mst_mgr; struct amdgpu_dm_connector* mst_port; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct amdgpu_dm_connector* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC2(struct drm_connector *connector, bool force)
{
	struct amdgpu_dm_connector *aconnector = FUNC1(connector);
	struct amdgpu_dm_connector *master = aconnector->mst_port;

	enum drm_connector_status status =
		FUNC0(
			connector,
			&master->mst_mgr,
			aconnector->port);

	return status;
}
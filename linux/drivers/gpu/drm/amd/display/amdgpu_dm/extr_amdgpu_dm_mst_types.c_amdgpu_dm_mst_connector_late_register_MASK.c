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
struct drm_dp_mst_port {int dummy; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_dm_connector {struct drm_dp_mst_port* port; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct drm_dp_mst_port*) ; 
 struct amdgpu_dm_connector* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC2(struct drm_connector *connector)
{
	struct amdgpu_dm_connector *amdgpu_dm_connector =
		FUNC1(connector);
	struct drm_dp_mst_port *port = amdgpu_dm_connector->port;

	return FUNC0(connector, port);
}
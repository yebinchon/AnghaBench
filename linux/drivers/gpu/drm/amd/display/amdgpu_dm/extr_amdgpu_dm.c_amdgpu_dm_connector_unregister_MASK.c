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
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  aux; } ;
struct amdgpu_dm_connector {TYPE_1__ dm_dp_aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct amdgpu_dm_connector* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC2(struct drm_connector *connector)
{
	struct amdgpu_dm_connector *amdgpu_dm_connector = FUNC1(connector);

	FUNC0(&amdgpu_dm_connector->dm_dp_aux.aux);
}
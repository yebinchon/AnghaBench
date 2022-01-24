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
struct edid {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  probed_modes; } ;
struct amdgpu_dm_connector {scalar_t__ num_modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 scalar_t__ FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct amdgpu_dm_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector,
					      struct edid *edid)
{
	struct amdgpu_dm_connector *amdgpu_dm_connector =
			FUNC4(connector);

	if (edid) {
		/* empty probed_modes */
		FUNC0(&connector->probed_modes);
		amdgpu_dm_connector->num_modes =
				FUNC2(connector, edid);

		/* sorting the probed modes before calling function
		 * amdgpu_dm_get_native_mode() since EDID can have
		 * more than one preferred mode. The modes that are
		 * later in the probed mode list could be of higher
		 * and preferred resolution. For example, 3840x2160
		 * resolution in base EDID preferred timing and 4096x2160
		 * preferred resolution in DID extension block later.
		 */
		FUNC3(&connector->probed_modes);
		FUNC1(connector);
	} else {
		amdgpu_dm_connector->num_modes = 0;
	}
}
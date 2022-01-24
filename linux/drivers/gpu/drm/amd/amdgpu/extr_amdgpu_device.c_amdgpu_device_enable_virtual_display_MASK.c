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
struct drm_device {int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {long num_crtc; } ;
struct amdgpu_device {int enable_virtual_display; TYPE_1__ mode_info; struct drm_device* ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char const*,int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ amdgpu_virtual_display ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,long*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_device *adev)
{
	adev->enable_virtual_display = false;

	if (amdgpu_virtual_display) {
		struct drm_device *ddev = adev->ddev;
		const char *pci_address_name = FUNC4(ddev->pdev);
		char *pciaddstr, *pciaddstr_tmp, *pciaddname_tmp, *pciaddname;

		pciaddstr = FUNC2(amdgpu_virtual_display, GFP_KERNEL);
		pciaddstr_tmp = pciaddstr;
		while ((pciaddname_tmp = FUNC6(&pciaddstr_tmp, ";"))) {
			pciaddname = FUNC6(&pciaddname_tmp, ",");
			if (!FUNC5("all", pciaddname)
			    || !FUNC5(pci_address_name, pciaddname)) {
				long num_crtc;
				int res = -1;

				adev->enable_virtual_display = true;

				if (pciaddname_tmp)
					res = FUNC3(pciaddname_tmp, 10,
						      &num_crtc);

				if (!res) {
					if (num_crtc < 1)
						num_crtc = 1;
					if (num_crtc > 6)
						num_crtc = 6;
					adev->mode_info.num_crtc = num_crtc;
				} else {
					adev->mode_info.num_crtc = 1;
				}
				break;
			}
		}

		FUNC0("virtual display string:%s, %s:virtual_display:%d, num_crtc:%d\n",
			 amdgpu_virtual_display, pci_address_name,
			 adev->enable_virtual_display, adev->mode_info.num_crtc);

		FUNC1(pciaddstr);
	}
}
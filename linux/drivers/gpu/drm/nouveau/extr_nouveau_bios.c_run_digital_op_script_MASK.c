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
typedef  int /*<<< orphan*/  uint16_t ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct dcb_output {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_CIO_CRE_44 ; 
 int /*<<< orphan*/  NV_CIO_CRE_44_HEADA ; 
 int /*<<< orphan*/  NV_CIO_CRE_44_HEADB ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ,struct dcb_output*,int) ; 
 struct nouveau_drm* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct dcb_output*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct drm_device *dev, uint16_t scriptptr,
		      struct dcb_output *dcbent, int head, bool dl)
{
	struct nouveau_drm *drm = FUNC3(dev);

	FUNC1(drm, "0x%04X: Parsing digital output script table\n",
		 scriptptr);
	FUNC0(dev, 0, NV_CIO_CRE_44, head ? NV_CIO_CRE_44_HEADB :
					         NV_CIO_CRE_44_HEADA);
	FUNC2(dev, scriptptr, dcbent, head);

	FUNC4(dev, dcbent, head, dl);
}
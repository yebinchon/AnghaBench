#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  possible_crtcs; } ;
struct nv50_msto {TYPE_1__ encoder; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_DPMST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_msto*) ; 
 struct nv50_msto* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv50_msto ; 
 int /*<<< orphan*/  nv50_msto_help ; 

__attribute__((used)) static int
FUNC4(struct drm_device *dev, u32 heads, const char *name, int id,
	      struct nv50_msto **pmsto)
{
	struct nv50_msto *msto;
	int ret;

	if (!(msto = *pmsto = FUNC3(sizeof(*msto), GFP_KERNEL)))
		return -ENOMEM;

	ret = FUNC1(dev, &msto->encoder, &nv50_msto,
			       DRM_MODE_ENCODER_DPMST, "%s-mst-%d", name, id);
	if (ret) {
		FUNC2(*pmsto);
		*pmsto = NULL;
		return ret;
	}

	FUNC0(&msto->encoder, &nv50_msto_help);
	msto->encoder.possible_crtcs = heads;
	return 0;
}
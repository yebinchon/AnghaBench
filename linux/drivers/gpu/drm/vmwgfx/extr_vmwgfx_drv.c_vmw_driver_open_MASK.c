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
struct vmw_private {int /*<<< orphan*/  tdev; } ;
struct vmw_fpriv {int /*<<< orphan*/ * tfile; } ;
struct drm_file {struct vmw_fpriv* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct vmw_fpriv*) ; 
 struct vmw_fpriv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 struct vmw_private* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, struct drm_file *file_priv)
{
	struct vmw_private *dev_priv = FUNC4(dev);
	struct vmw_fpriv *vmw_fp;
	int ret = -ENOMEM;

	vmw_fp = FUNC1(sizeof(*vmw_fp), GFP_KERNEL);
	if (FUNC3(!vmw_fp))
		return ret;

	vmw_fp->tfile = FUNC2(dev_priv->tdev, 10);
	if (FUNC3(vmw_fp->tfile == NULL))
		goto out_no_tfile;

	file_priv->driver_priv = vmw_fp;

	return 0;

out_no_tfile:
	FUNC0(vmw_fp);
	return ret;
}
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
struct TYPE_3__ {int /*<<< orphan*/  color_adjust; } ;
struct panfrost_file_priv {TYPE_1__ mm; int /*<<< orphan*/  mm_lock; struct panfrost_device* pfdev; } ;
struct panfrost_device {int dummy; } ;
struct drm_file {struct panfrost_file_priv* driver_priv; } ;
struct drm_device {struct panfrost_device* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int SZ_32M ; 
 int SZ_4G ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct panfrost_file_priv*) ; 
 struct panfrost_file_priv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  panfrost_drm_mm_color_adjust ; 
 int FUNC4 (struct panfrost_file_priv*) ; 
 int FUNC5 (struct panfrost_file_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct panfrost_file_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct drm_device *dev, struct drm_file *file)
{
	int ret;
	struct panfrost_device *pfdev = dev->dev_private;
	struct panfrost_file_priv *panfrost_priv;

	panfrost_priv = FUNC3(sizeof(*panfrost_priv), GFP_KERNEL);
	if (!panfrost_priv)
		return -ENOMEM;

	panfrost_priv->pfdev = pfdev;
	file->driver_priv = panfrost_priv;

	FUNC7(&panfrost_priv->mm_lock);

	/* 4G enough for now. can be 48-bit */
	FUNC0(&panfrost_priv->mm, SZ_32M >> PAGE_SHIFT, (SZ_4G - SZ_32M) >> PAGE_SHIFT);
	panfrost_priv->mm.color_adjust = panfrost_drm_mm_color_adjust;

	ret = FUNC5(panfrost_priv);
	if (ret)
		goto err_pgtable;

	ret = FUNC4(panfrost_priv);
	if (ret)
		goto err_job;

	return 0;

err_job:
	FUNC6(panfrost_priv);
err_pgtable:
	FUNC1(&panfrost_priv->mm);
	FUNC2(panfrost_priv);
	return ret;
}
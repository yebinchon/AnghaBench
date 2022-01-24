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
struct panfrost_perfcnt {int /*<<< orphan*/  lock; struct panfrost_file_priv* user; } ;
struct panfrost_file_priv {struct panfrost_device* pfdev; } ;
struct panfrost_device {int /*<<< orphan*/  dev; struct panfrost_perfcnt* perfcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct panfrost_device*,struct panfrost_file_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct panfrost_file_priv *pfile)
{
	struct panfrost_device *pfdev = pfile->pfdev;
	struct panfrost_perfcnt *perfcnt = pfdev->perfcnt;

	FUNC3(pfdev->dev);
	FUNC0(&perfcnt->lock);
	if (perfcnt->user == pfile)
		FUNC2(pfdev, pfile);
	FUNC1(&perfcnt->lock);
	FUNC4(pfdev->dev);
	FUNC5(pfdev->dev);
}
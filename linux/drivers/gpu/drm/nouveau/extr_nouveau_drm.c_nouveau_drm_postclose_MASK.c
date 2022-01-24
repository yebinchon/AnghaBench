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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct nouveau_cli {int /*<<< orphan*/  head; int /*<<< orphan*/  mutex; scalar_t__ abi16; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_cli*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct nouveau_cli* FUNC5 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_cli*) ; 
 struct nouveau_drm* FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct drm_device *dev, struct drm_file *fpriv)
{
	struct nouveau_cli *cli = FUNC5(fpriv);
	struct nouveau_drm *drm = FUNC7(dev);

	FUNC8(dev->dev);

	FUNC2(&cli->mutex);
	if (cli->abi16)
		FUNC4(cli->abi16);
	FUNC3(&cli->mutex);

	FUNC2(&drm->client.mutex);
	FUNC1(&cli->head);
	FUNC3(&drm->client.mutex);

	FUNC6(cli);
	FUNC0(cli);
	FUNC9(dev->dev);
	FUNC10(dev->dev);
}
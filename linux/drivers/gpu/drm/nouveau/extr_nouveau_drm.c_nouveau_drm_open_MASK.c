#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct nouveau_drm {TYPE_2__ client; int /*<<< orphan*/  clients; } ;
struct TYPE_3__ {int super; } ;
struct nouveau_cli {int /*<<< orphan*/  head; TYPE_1__ base; } ;
struct drm_file {struct nouveau_cli* driver_priv; int /*<<< orphan*/  pid; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_cli*) ; 
 struct nouveau_cli* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_cli*) ; 
 int FUNC7 (struct nouveau_drm*,char*,struct nouveau_cli*) ; 
 struct nouveau_drm* FUNC8 (struct drm_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int
FUNC14(struct drm_device *dev, struct drm_file *fpriv)
{
	struct nouveau_drm *drm = FUNC8(dev);
	struct nouveau_cli *cli;
	char name[32], tmpname[TASK_COMM_LEN];
	int ret;

	/* need to bring up power immediately if opening device */
	ret = FUNC10(dev->dev);
	if (ret < 0 && ret != -EACCES)
		return ret;

	FUNC0(tmpname, current);
	FUNC13(name, sizeof(name), "%s[%d]", tmpname, FUNC9(fpriv->pid));

	if (!(cli = FUNC2(sizeof(*cli), GFP_KERNEL))) {
		ret = -ENOMEM;
		goto done;
	}

	ret = FUNC7(drm, name, cli);
	if (ret)
		goto done;

	cli->base.super = false;

	fpriv->driver_priv = cli;

	FUNC4(&drm->client.mutex);
	FUNC3(&cli->head, &drm->clients);
	FUNC5(&drm->client.mutex);

done:
	if (ret && cli) {
		FUNC6(cli);
		FUNC1(cli);
	}

	FUNC11(dev->dev);
	FUNC12(dev->dev);
	return ret;
}
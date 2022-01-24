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
struct hid_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct hid_device {TYPE_1__ dev; } ;
struct elo_priv {int /*<<< orphan*/  work; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELO_PERIODIC_READ_INTERVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elo_work ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int FUNC3 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,char*) ; 
 int FUNC5 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,struct elo_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct elo_priv*) ; 
 struct elo_priv* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC12(struct hid_device *hdev, const struct hid_device_id *id)
{
	struct elo_priv *priv;
	int ret;

	priv = FUNC9(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC0(&priv->work, elo_work);
	priv->usbdev = FUNC7(FUNC11(hdev->dev.parent));

	FUNC6(hdev, priv);

	ret = FUNC5(hdev);
	if (ret) {
		FUNC2(hdev, "parse failed\n");
		goto err_free;
	}

	ret = FUNC3(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC2(hdev, "hw start failed\n");
		goto err_free;
	}

	if (FUNC1(priv->usbdev)) {
		FUNC4(hdev, "broken firmware found, installing workaround\n");
		FUNC10(wq, &priv->work, ELO_PERIODIC_READ_INTERVAL);
	}

	return 0;
err_free:
	FUNC8(priv);
	return ret;
}
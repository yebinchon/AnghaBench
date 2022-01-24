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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FIRMWARE_NAME ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  R128_PM4_MICROCODE_ADDR ; 
 int /*<<< orphan*/  R128_PM4_MICROCODE_DATAH ; 
 int /*<<< orphan*/  R128_PM4_MICROCODE_DATAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 struct platform_device* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 int FUNC10 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(drm_r128_private_t *dev_priv)
{
	struct platform_device *pdev;
	const struct firmware *fw;
	const __be32 *fw_data;
	int rc, i;

	FUNC0("\n");

	pdev = FUNC5("r128_cce", 0, NULL, 0);
	if (FUNC1(pdev)) {
		FUNC7("r128_cce: Failed to register firmware\n");
		return FUNC2(pdev);
	}
	rc = FUNC10(&fw, FIRMWARE_NAME, &pdev->dev);
	FUNC6(pdev);
	if (rc) {
		FUNC7("r128_cce: Failed to load firmware \"%s\"\n",
		       FIRMWARE_NAME);
		return rc;
	}

	if (fw->size != 256 * 8) {
		FUNC7("r128_cce: Bogus length %zu in firmware \"%s\"\n",
		       fw->size, FIRMWARE_NAME);
		rc = -EINVAL;
		goto out_release;
	}

	FUNC8(dev_priv);

	fw_data = (const __be32 *)fw->data;
	FUNC3(R128_PM4_MICROCODE_ADDR, 0);
	for (i = 0; i < 256; i++) {
		FUNC3(R128_PM4_MICROCODE_DATAH,
			   FUNC4(&fw_data[i * 2]));
		FUNC3(R128_PM4_MICROCODE_DATAL,
			   FUNC4(&fw_data[i * 2 + 1]));
	}

out_release:
	FUNC9(fw);
	return rc;
}
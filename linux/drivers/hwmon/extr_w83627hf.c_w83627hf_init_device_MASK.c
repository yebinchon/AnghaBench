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
typedef  int u8 ;
struct w83627hf_data {int type; int vid; int vrm_ovt; int* sens; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  enum chips { ____Placeholder_chips } chips ;

/* Variables and functions */
 int* BIT_SCFG1 ; 
 int* BIT_SCFG2 ; 
 int /*<<< orphan*/  W83627HF_REG_TEMP2_CONFIG ; 
 int /*<<< orphan*/  W83627HF_REG_TEMP3_CONFIG ; 
 int /*<<< orphan*/  W83627THF_REG_VRM_OVT_CFG ; 
 int /*<<< orphan*/  W83781D_REG_CHIPID ; 
 int /*<<< orphan*/  W83781D_REG_CONFIG ; 
 int /*<<< orphan*/  W83781D_REG_I2C_ADDR ; 
 int /*<<< orphan*/  W83781D_REG_I2C_SUBADDR ; 
 int /*<<< orphan*/  W83781D_REG_SCFG1 ; 
 int /*<<< orphan*/  W83781D_REG_SCFG2 ; 
 int /*<<< orphan*/  W83781D_REG_VBAT ; 
 int /*<<< orphan*/  W83781D_REG_VID_FANDIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int force_i2c ; 
 scalar_t__ init ; 
 struct w83627hf_data* FUNC1 (struct platform_device*) ; 
 int w83627hf ; 
 int FUNC2 (struct w83627hf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct w83627hf_data*,int /*<<< orphan*/ ,int) ; 
 int w83627thf ; 
 int FUNC4 (struct platform_device*) ; 
 int w83637hf ; 
 int w83687thf ; 
 int FUNC5 (struct platform_device*) ; 
 int w83697hf ; 

__attribute__((used)) static void FUNC6(struct platform_device *pdev)
{
	struct w83627hf_data *data = FUNC1(pdev);
	int i;
	enum chips type = data->type;
	u8 tmp;

	/* Minimize conflicts with other winbond i2c-only clients...  */
	/* disable i2c subclients... how to disable main i2c client?? */
	/* force i2c address to relatively uncommon address */
	if (type == w83627hf) {
		FUNC3(data, W83781D_REG_I2C_SUBADDR, 0x89);
		FUNC3(data, W83781D_REG_I2C_ADDR, force_i2c);
	}

	/* Read VID only once */
	if (type == w83627hf || type == w83637hf) {
		int lo = FUNC2(data, W83781D_REG_VID_FANDIV);
		int hi = FUNC2(data, W83781D_REG_CHIPID);
		data->vid = (lo & 0x0f) | ((hi & 0x01) << 4);
	} else if (type == w83627thf) {
		data->vid = FUNC4(pdev);
	} else if (type == w83687thf) {
		data->vid = FUNC5(pdev);
	}

	/* Read VRM & OVT Config only once */
	if (type == w83627thf || type == w83637hf || type == w83687thf) {
		data->vrm_ovt = 
			FUNC2(data, W83627THF_REG_VRM_OVT_CFG);
	}

	tmp = FUNC2(data, W83781D_REG_SCFG1);
	for (i = 1; i <= 3; i++) {
		if (!(tmp & BIT_SCFG1[i - 1])) {
			data->sens[i - 1] = 4;
		} else {
			if (FUNC2
			    (data,
			     W83781D_REG_SCFG2) & BIT_SCFG2[i - 1])
				data->sens[i - 1] = 1;
			else
				data->sens[i - 1] = 2;
		}
		if ((type == w83697hf) && (i == 2))
			break;
	}

	if(init) {
		/* Enable temp2 */
		tmp = FUNC2(data, W83627HF_REG_TEMP2_CONFIG);
		if (tmp & 0x01) {
			FUNC0(&pdev->dev, "Enabling temp2, readings "
				 "might not make sense\n");
			FUNC3(data, W83627HF_REG_TEMP2_CONFIG,
				tmp & 0xfe);
		}

		/* Enable temp3 */
		if (type != w83697hf) {
			tmp = FUNC2(data,
				W83627HF_REG_TEMP3_CONFIG);
			if (tmp & 0x01) {
				FUNC0(&pdev->dev, "Enabling temp3, "
					 "readings might not make sense\n");
				FUNC3(data,
					W83627HF_REG_TEMP3_CONFIG, tmp & 0xfe);
			}
		}
	}

	/* Start monitoring */
	FUNC3(data, W83781D_REG_CONFIG,
			    (FUNC2(data,
						W83781D_REG_CONFIG) & 0xf7)
			    | 0x01);

	/* Enable VBAT monitoring if needed */
	tmp = FUNC2(data, W83781D_REG_VBAT);
	if (!(tmp & 0x01))
		FUNC3(data, W83781D_REG_VBAT, tmp | 0x01);
}
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
struct resource {int start; } ;
struct device_node {int dummy; } ;
struct alpine_msix_data {int addr; struct alpine_msix_data* msi_map; int /*<<< orphan*/  spi_first; int /*<<< orphan*/  num_spis; int /*<<< orphan*/  msi_map_lock; } ;

/* Variables and functions */
 int ALPINE_MSIX_SPI_TARGET_CLUSTER0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct alpine_msix_data*,struct device_node*) ; 
 struct alpine_msix_data* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct alpine_msix_data*) ; 
 struct alpine_msix_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device_node *node,
			    struct device_node *parent)
{
	struct alpine_msix_data *priv;
	struct resource res;
	int ret;

	priv = FUNC5(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC10(&priv->msi_map_lock);

	ret = FUNC6(node, 0, &res);
	if (ret) {
		FUNC9("Failed to allocate resource\n");
		goto err_priv;
	}

	/*
	 * The 20 least significant bits of addr provide direct information
	 * regarding the interrupt destination.
	 *
	 * To select the primary GIC as the target GIC, bits [18:17] must be set
	 * to 0x0. In this case, bit 16 (SPI_TARGET_CLUSTER0) must be set.
	 */
	priv->addr = res.start & FUNC1(63,20);
	priv->addr |= ALPINE_MSIX_SPI_TARGET_CLUSTER0;

	if (FUNC7(node, "al,msi-base-spi", &priv->spi_first)) {
		FUNC9("Unable to parse MSI base\n");
		ret = -EINVAL;
		goto err_priv;
	}

	if (FUNC7(node, "al,msi-num-spis", &priv->num_spis)) {
		FUNC9("Unable to parse MSI numbers\n");
		ret = -EINVAL;
		goto err_priv;
	}

	priv->msi_map = FUNC3(FUNC0(priv->num_spis),
				sizeof(*priv->msi_map),
				GFP_KERNEL);
	if (!priv->msi_map) {
		ret = -ENOMEM;
		goto err_priv;
	}

	FUNC8("Registering %d msixs, starting at %d\n",
		 priv->num_spis, priv->spi_first);

	ret = FUNC2(priv, node);
	if (ret)
		goto err_map;

	return 0;

err_map:
	FUNC4(priv->msi_map);
err_priv:
	FUNC4(priv);
	return ret;
}
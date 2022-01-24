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
struct alpine_msix_data {int num_spis; int spi_first; int /*<<< orphan*/  msi_map_lock; int /*<<< orphan*/  msi_map; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct alpine_msix_data *priv, int num_req)
{
	int first;

	FUNC2(&priv->msi_map_lock);

	first = FUNC0(priv->msi_map, priv->num_spis, 0,
					   num_req, 0);
	if (first >= priv->num_spis) {
		FUNC3(&priv->msi_map_lock);
		return -ENOSPC;
	}

	FUNC1(priv->msi_map, first, num_req);

	FUNC3(&priv->msi_map_lock);

	return priv->spi_first + first;
}
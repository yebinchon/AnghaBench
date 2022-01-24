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
struct alpine_msix_data {unsigned int spi_first; int /*<<< orphan*/  msi_map_lock; int /*<<< orphan*/  msi_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct alpine_msix_data *priv, unsigned sgi,
				 int num_req)
{
	int first = sgi - priv->spi_first;

	FUNC1(&priv->msi_map_lock);

	FUNC0(priv->msi_map, first, num_req);

	FUNC2(&priv->msi_map_lock);
}
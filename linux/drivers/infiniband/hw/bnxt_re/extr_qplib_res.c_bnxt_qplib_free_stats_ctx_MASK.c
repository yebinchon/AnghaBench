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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct bnxt_qplib_stats {int fw_id; int /*<<< orphan*/  dma_map; scalar_t__ dma; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_qplib_stats*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev,
				      struct bnxt_qplib_stats *stats)
{
	if (stats->dma) {
		FUNC0(&pdev->dev, stats->size,
				  stats->dma, stats->dma_map);
	}
	FUNC1(stats, 0, sizeof(*stats));
	stats->fw_id = -1;
}
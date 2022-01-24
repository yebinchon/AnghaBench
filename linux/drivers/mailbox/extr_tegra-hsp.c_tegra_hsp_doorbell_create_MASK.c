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
struct tegra_hsp_channel {struct tegra_hsp* hsp; scalar_t__ regs; } ;
struct tegra_hsp_doorbell {unsigned int master; unsigned int index; struct tegra_hsp_channel channel; int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;
struct tegra_hsp {int num_sm; int num_ss; int num_as; int /*<<< orphan*/  lock; int /*<<< orphan*/  doorbells; int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tegra_hsp_channel* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SZ_64K ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 struct tegra_hsp_doorbell* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct tegra_hsp_channel *
FUNC6(struct tegra_hsp *hsp, const char *name,
			  unsigned int master, unsigned int index)
{
	struct tegra_hsp_doorbell *db;
	unsigned int offset;
	unsigned long flags;

	db = FUNC2(hsp->dev, sizeof(*db), GFP_KERNEL);
	if (!db)
		return FUNC0(-ENOMEM);

	offset = (1 + (hsp->num_sm / 2) + hsp->num_ss + hsp->num_as) * SZ_64K;
	offset += index * 0x100;

	db->channel.regs = hsp->regs + offset;
	db->channel.hsp = hsp;

	db->name = FUNC1(hsp->dev, name, GFP_KERNEL);
	db->master = master;
	db->index = index;

	FUNC4(&hsp->lock, flags);
	FUNC3(&db->list, &hsp->doorbells);
	FUNC5(&hsp->lock, flags);

	return &db->channel;
}
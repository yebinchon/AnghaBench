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
struct tegra_bpmp {int dummy; } ;
struct mbox_client {int dummy; } ;

/* Variables and functions */
 struct tegra_bpmp* FUNC0 (struct mbox_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_bpmp*) ; 

__attribute__((used)) static void FUNC2(struct mbox_client *client, void *data)
{
	struct tegra_bpmp *bpmp = FUNC0(client);

	FUNC1(bpmp);
}
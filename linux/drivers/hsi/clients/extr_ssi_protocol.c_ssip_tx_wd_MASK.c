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
struct timer_list {int dummy; } ;
struct ssi_protocol {struct hsi_client* cl; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct ssi_protocol* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ssi_protocol* ssi ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_client*) ; 
 int /*<<< orphan*/  tx_wd ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct ssi_protocol *ssi = FUNC1(ssi, t, tx_wd);
	struct hsi_client *cl = ssi->cl;

	FUNC0(&cl->device, "Watchdog triggered\n");
	FUNC2(cl);
}
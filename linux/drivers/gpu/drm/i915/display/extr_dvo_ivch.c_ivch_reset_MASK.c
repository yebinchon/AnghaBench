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
struct ivch_priv {int* reg_backup; } ;
struct intel_dvo_device {struct ivch_priv* dev_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  VR10 ; 
 int /*<<< orphan*/ * backup_addresses ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dvo_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct intel_dvo_device *dvo)
{
	struct ivch_priv *priv = dvo->dev_priv;
	int i;

	FUNC1("Resetting the IVCH registers\n");

	FUNC2(dvo, VR10, 0x0000);

	for (i = 0; i < FUNC0(backup_addresses); i++)
		FUNC2(dvo, backup_addresses[i], priv->reg_backup[i]);
}
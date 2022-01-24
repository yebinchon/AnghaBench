#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct safexcel_crypto_priv {int /*<<< orphan*/  dev; TYPE_1__* ring; } ;
struct safexcel_command_desc {int /*<<< orphan*/  last_seg; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct safexcel_command_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct safexcel_command_desc* FUNC2 (struct safexcel_crypto_priv*,int /*<<< orphan*/ *) ; 

void FUNC3(struct safexcel_crypto_priv *priv, int ring)
{
	struct safexcel_command_desc *cdesc;

	/* Acknowledge the command descriptors */
	do {
		cdesc = FUNC2(priv, &priv->ring[ring].cdr);
		if (FUNC0(cdesc)) {
			FUNC1(priv->dev,
				"Could not retrieve the command descriptor\n");
			return;
		}
	} while (!cdesc->last_seg);
}
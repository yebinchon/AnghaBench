#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_3__ {scalar_t__ Size; } ;
struct TYPE_4__ {TYPE_1__ ring; } ;
typedef  TYPE_2__ drm_i810_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CMD_REPORT_HEAD ; 
 int INST_FLUSH_MAP_CACHE ; 
 int INST_OP_FLUSH ; 
 int INST_PARSER_CLIENT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev)
{
	drm_i810_private_t *dev_priv = dev->dev_private;
	RING_LOCALS;

	FUNC3(dev);

	FUNC1(4);
	FUNC2(INST_PARSER_CLIENT | INST_OP_FLUSH | INST_FLUSH_MAP_CACHE);
	FUNC2(CMD_REPORT_HEAD);
	FUNC2(0);
	FUNC2(0);
	FUNC0();

	FUNC4(dev, dev_priv->ring.Size - 8);
}
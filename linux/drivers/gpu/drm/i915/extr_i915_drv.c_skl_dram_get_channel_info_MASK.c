#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {scalar_t__ size; int ranks; } ;
struct dram_channel_info {int ranks; int is_16gb_dimm; TYPE_1__ dimm_s; TYPE_1__ dimm_l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,TYPE_1__*,int,char,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct drm_i915_private *dev_priv,
			  struct dram_channel_info *ch,
			  int channel, u32 val)
{
	FUNC1(dev_priv, &ch->dimm_l,
			       channel, 'L', val & 0xffff);
	FUNC1(dev_priv, &ch->dimm_s,
			       channel, 'S', val >> 16);

	if (ch->dimm_l.size == 0 && ch->dimm_s.size == 0) {
		FUNC0("CH%u not populated\n", channel);
		return -EINVAL;
	}

	if (ch->dimm_l.ranks == 2 || ch->dimm_s.ranks == 2)
		ch->ranks = 2;
	else if (ch->dimm_l.ranks == 1 && ch->dimm_s.ranks == 1)
		ch->ranks = 2;
	else
		ch->ranks = 1;

	ch->is_16gb_dimm =
		FUNC2(&ch->dimm_l) ||
		FUNC2(&ch->dimm_s);

	FUNC0("CH%u ranks: %u, 16Gb DIMMs: %s\n",
		      channel, ch->ranks, FUNC3(ch->is_16gb_dimm));

	return 0;
}
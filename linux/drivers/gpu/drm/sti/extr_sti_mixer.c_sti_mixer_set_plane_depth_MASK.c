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
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct sti_plane {int desc; TYPE_2__ drm_plane; } ;
struct sti_mixer {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int normalized_zpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int GAM_DEPTH_GDP0_ID ; 
 int GAM_DEPTH_GDP1_ID ; 
 int GAM_DEPTH_GDP2_ID ; 
 int GAM_DEPTH_GDP3_ID ; 
 int GAM_DEPTH_MASK_ID ; 
 int GAM_DEPTH_VID0_ID ; 
 int /*<<< orphan*/  GAM_MIXER_CRB ; 
 unsigned int GAM_MIXER_NB_DEPTH_LEVEL ; 
#define  STI_CURSOR 133 
#define  STI_GDP_0 132 
#define  STI_GDP_1 131 
#define  STI_GDP_2 130 
#define  STI_GDP_3 129 
#define  STI_HQVDP_0 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (struct sti_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sti_mixer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sti_mixer*) ; 
 int /*<<< orphan*/  FUNC6 (struct sti_plane*) ; 

int FUNC7(struct sti_mixer *mixer, struct sti_plane *plane)
{
	int plane_id, depth = plane->drm_plane.state->normalized_zpos;
	unsigned int i;
	u32 mask, val;

	switch (plane->desc) {
	case STI_GDP_0:
		plane_id = GAM_DEPTH_GDP0_ID;
		break;
	case STI_GDP_1:
		plane_id = GAM_DEPTH_GDP1_ID;
		break;
	case STI_GDP_2:
		plane_id = GAM_DEPTH_GDP2_ID;
		break;
	case STI_GDP_3:
		plane_id = GAM_DEPTH_GDP3_ID;
		break;
	case STI_HQVDP_0:
		plane_id = GAM_DEPTH_VID0_ID;
		break;
	case STI_CURSOR:
		/* no need to set depth for cursor */
		return 0;
	default:
		FUNC1("Unknown plane %d\n", plane->desc);
		return 1;
	}

	/* Search if a previous depth was already assigned to the plane */
	val = FUNC3(mixer, GAM_MIXER_CRB);
	for (i = 0; i < GAM_MIXER_NB_DEPTH_LEVEL; i++) {
		mask = GAM_DEPTH_MASK_ID << (3 * i);
		if ((val & mask) == plane_id << (3 * i))
			break;
	}

	mask |= GAM_DEPTH_MASK_ID << (3 * depth);
	plane_id = plane_id << (3 * depth);

	FUNC0("%s %s depth=%d\n", FUNC5(mixer),
			 FUNC6(plane), depth);
	FUNC2(mixer->dev, "GAM_MIXER_CRB val 0x%x mask 0x%x\n",
		plane_id, mask);

	val &= ~mask;
	val |= plane_id;
	FUNC4(mixer, GAM_MIXER_CRB, val);

	FUNC2(mixer->dev, "Read GAM_MIXER_CRB 0x%x\n",
		FUNC3(mixer, GAM_MIXER_CRB));
	return 0;
}
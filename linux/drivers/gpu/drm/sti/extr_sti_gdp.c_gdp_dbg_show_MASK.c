#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_plane {int /*<<< orphan*/  mutex; TYPE_2__* state; } ;
struct TYPE_8__ {struct drm_plane drm_plane; } ;
struct sti_gdp {scalar_t__ regs; TYPE_4__ plane; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_3__ base; } ;
struct TYPE_6__ {struct drm_crtc* crtc; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GAM_GDP_AGC ; 
 int /*<<< orphan*/  GAM_GDP_CML ; 
 int /*<<< orphan*/  GAM_GDP_CTL ; 
 scalar_t__ GAM_GDP_CTL_OFFSET ; 
 int /*<<< orphan*/  GAM_GDP_KEY1 ; 
 int /*<<< orphan*/  GAM_GDP_KEY2 ; 
 int /*<<< orphan*/  GAM_GDP_MST ; 
 scalar_t__ GAM_GDP_MST_OFFSET ; 
 int /*<<< orphan*/  GAM_GDP_NVN ; 
 scalar_t__ GAM_GDP_NVN_OFFSET ; 
 int /*<<< orphan*/  GAM_GDP_PML ; 
 int /*<<< orphan*/  GAM_GDP_PMP ; 
 int /*<<< orphan*/  GAM_GDP_PPT ; 
 scalar_t__ GAM_GDP_PPT_OFFSET ; 
 int /*<<< orphan*/  GAM_GDP_SIZE ; 
 scalar_t__ GAM_GDP_SIZE_OFFSET ; 
 int /*<<< orphan*/  GAM_GDP_VPO ; 
 scalar_t__ GAM_GDP_VPO_OFFSET ; 
 int /*<<< orphan*/  GAM_GDP_VPS ; 
 scalar_t__ GAM_GDP_VPS_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,struct sti_gdp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_file*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct seq_file*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC16(struct seq_file *s, void *data)
{
	struct drm_info_node *node = s->private;
	struct sti_gdp *gdp = (struct sti_gdp *)node->info_ent->data;
	struct drm_plane *drm_plane = &gdp->plane.drm_plane;
	struct drm_crtc *crtc;

	FUNC1(&drm_plane->mutex, NULL);
	crtc = drm_plane->state->crtc;
	FUNC2(&drm_plane->mutex);

	FUNC11(s, "%s: (vaddr = 0x%p)",
		   FUNC14(&gdp->plane), gdp->regs);

	FUNC0(GAM_GDP_CTL);
	FUNC3(s, FUNC10(gdp->regs + GAM_GDP_CTL_OFFSET));
	FUNC0(GAM_GDP_AGC);
	FUNC0(GAM_GDP_VPO);
	FUNC8(s, FUNC10(gdp->regs + GAM_GDP_VPO_OFFSET));
	FUNC0(GAM_GDP_VPS);
	FUNC9(s, FUNC10(gdp->regs + GAM_GDP_VPS_OFFSET));
	FUNC0(GAM_GDP_PML);
	FUNC0(GAM_GDP_PMP);
	FUNC0(GAM_GDP_SIZE);
	FUNC7(s, FUNC10(gdp->regs + GAM_GDP_SIZE_OFFSET));
	FUNC0(GAM_GDP_NVN);
	FUNC5(s, gdp, FUNC10(gdp->regs + GAM_GDP_NVN_OFFSET));
	FUNC0(GAM_GDP_KEY1);
	FUNC0(GAM_GDP_KEY2);
	FUNC0(GAM_GDP_PPT);
	FUNC6(s, FUNC10(gdp->regs + GAM_GDP_PPT_OFFSET));
	FUNC0(GAM_GDP_CML);
	FUNC0(GAM_GDP_MST);
	FUNC4(s, FUNC10(gdp->regs + GAM_GDP_MST_OFFSET));

	FUNC12(s, "\n\n");
	if (!crtc)
		FUNC12(s, "  Not connected to any DRM CRTC\n");
	else
		FUNC11(s, "  Connected to DRM CRTC #%d (%s)\n",
			   crtc->base.id, FUNC13(FUNC15(crtc)));

	return 0;
}
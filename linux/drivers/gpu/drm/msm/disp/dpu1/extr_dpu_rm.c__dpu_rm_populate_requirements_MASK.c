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
struct msm_display_topology {int /*<<< orphan*/  num_intf; int /*<<< orphan*/  num_enc; int /*<<< orphan*/  num_lm; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct dpu_rm_requirements {struct msm_display_topology topology; int /*<<< orphan*/  hw_res; } ;
struct dpu_rm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
		struct dpu_rm *rm,
		struct drm_encoder *enc,
		struct drm_crtc_state *crtc_state,
		struct dpu_rm_requirements *reqs,
		struct msm_display_topology req_topology)
{
	FUNC1(enc, &reqs->hw_res);

	reqs->topology = req_topology;

	FUNC0("num_lm: %d num_enc: %d num_intf: %d\n",
		      reqs->topology.num_lm, reqs->topology.num_enc,
		      reqs->topology.num_intf);

	return 0;
}
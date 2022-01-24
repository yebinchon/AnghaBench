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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
#define  SSPP_CURSOR0 139 
#define  SSPP_CURSOR1 138 
#define  SSPP_DMA0 137 
#define  SSPP_DMA1 136 
#define  SSPP_RGB0 135 
#define  SSPP_RGB1 134 
#define  SSPP_RGB2 133 
#define  SSPP_RGB3 132 
#define  SSPP_VIG0 131 
#define  SSPP_VIG1 130 
#define  SSPP_VIG2 129 
#define  SSPP_VIG3 128 

__attribute__((used)) static u32 FUNC10(enum mdp5_pipe pipe,
		enum mdp_mixer_stage_id stage)
{
	switch (pipe) {
	case SSPP_VIG0: return FUNC6(stage);
	case SSPP_VIG1: return FUNC7(stage);
	case SSPP_VIG2: return FUNC8(stage);
	case SSPP_RGB0: return FUNC2(stage);
	case SSPP_RGB1: return FUNC3(stage);
	case SSPP_RGB2: return FUNC4(stage);
	case SSPP_DMA0: return FUNC0(stage);
	case SSPP_DMA1: return FUNC1(stage);
	case SSPP_VIG3: return FUNC9(stage);
	case SSPP_RGB3: return FUNC5(stage);
	case SSPP_CURSOR0:
	case SSPP_CURSOR1:
	default:	return 0;
	}
}
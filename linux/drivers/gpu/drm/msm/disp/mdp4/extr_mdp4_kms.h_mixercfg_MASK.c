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
typedef  int uint32_t ;
typedef  enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;
typedef  enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1 ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE0__MASK ; 
 int FUNC2 (int) ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1 ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE1__MASK ; 
 int FUNC3 (int) ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1 ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE2__MASK ; 
 int FUNC4 (int) ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1 ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE3__MASK ; 
 int FUNC5 (int) ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1 ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE4__MASK ; 
 int FUNC6 (int) ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1 ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE5__MASK ; 
 int FUNC7 (int) ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1 ; 
 int MDP4_LAYERMIXER_IN_CFG_PIPE6__MASK ; 
#define  RGB1 134 
#define  RGB2 133 
#define  RGB3 132 
#define  VG1 131 
#define  VG2 130 
#define  VG3 129 
#define  VG4 128 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 

__attribute__((used)) static inline uint32_t FUNC9(uint32_t mixer_cfg, int mixer,
		enum mdp4_pipe pipe, enum mdp_mixer_stage_id stage)
{
	switch (pipe) {
	case VG1:
		mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE0__MASK |
				MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1);
		mixer_cfg |= FUNC1(stage) |
			FUNC0(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1);
		break;
	case VG2:
		mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE1__MASK |
				MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1);
		mixer_cfg |= FUNC2(stage) |
			FUNC0(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1);
		break;
	case RGB1:
		mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE2__MASK |
				MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1);
		mixer_cfg |= FUNC3(stage) |
			FUNC0(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1);
		break;
	case RGB2:
		mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE3__MASK |
				MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1);
		mixer_cfg |= FUNC4(stage) |
			FUNC0(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1);
		break;
	case RGB3:
		mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE4__MASK |
				MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1);
		mixer_cfg |= FUNC5(stage) |
			FUNC0(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1);
		break;
	case VG3:
		mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE5__MASK |
				MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1);
		mixer_cfg |= FUNC6(stage) |
			FUNC0(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1);
		break;
	case VG4:
		mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE6__MASK |
				MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1);
		mixer_cfg |= FUNC7(stage) |
			FUNC0(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1);
		break;
	default:
		FUNC8(1, "invalid pipe");
		break;
	}

	return mixer_cfg;
}
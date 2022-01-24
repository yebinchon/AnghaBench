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
struct mdp5_kms {int dummy; } ;
struct csc_cfg {scalar_t__ type; int* matrix; int* pre_clamp; int* post_clamp; int /*<<< orphan*/ * post_bias; int /*<<< orphan*/ * pre_bias; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CSC_RGB2YUV ; 
 scalar_t__ CSC_YUV2RGB ; 
 scalar_t__ CSC_YUV2YUV ; 
 int /*<<< orphan*/  DATA_FORMAT_YUV ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int MDP5_PIPE_OP_MODE_CSC_1_EN ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int,int) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 
 int /*<<< orphan*/  FUNC25 (int,int) ; 
 int /*<<< orphan*/  FUNC26 (int,int) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC29 (int) ; 

__attribute__((used)) static void FUNC30(struct mdp5_kms *mdp5_kms, enum mdp5_pipe pipe,
		struct csc_cfg *csc)
{
	uint32_t  i, mode = 0; /* RGB, no CSC */
	uint32_t *matrix;

	if (FUNC29(!csc))
		return;

	if ((csc->type == CSC_YUV2RGB) || (CSC_YUV2YUV == csc->type))
		mode |= FUNC17(DATA_FORMAT_YUV);
	if ((csc->type == CSC_RGB2YUV) || (CSC_YUV2YUV == csc->type))
		mode |= FUNC16(DATA_FORMAT_YUV);
	mode |= MDP5_PIPE_OP_MODE_CSC_1_EN;
	FUNC28(mdp5_kms, FUNC27(pipe), mode);

	matrix = csc->matrix;
	FUNC28(mdp5_kms, FUNC18(pipe),
			FUNC1(matrix[0]) |
			FUNC2(matrix[1]));
	FUNC28(mdp5_kms, FUNC19(pipe),
			FUNC3(matrix[2]) |
			FUNC4(matrix[3]));
	FUNC28(mdp5_kms, FUNC20(pipe),
			FUNC5(matrix[4]) |
			FUNC6(matrix[5]));
	FUNC28(mdp5_kms, FUNC21(pipe),
			FUNC7(matrix[6]) |
			FUNC8(matrix[7]));
	FUNC28(mdp5_kms, FUNC22(pipe),
			FUNC9(matrix[8]));

	for (i = 0; i < FUNC0(csc->pre_bias); i++) {
		uint32_t *pre_clamp = csc->pre_clamp;
		uint32_t *post_clamp = csc->post_clamp;

		FUNC28(mdp5_kms, FUNC26(pipe, i),
			FUNC14(pre_clamp[2*i+1]) |
			FUNC15(pre_clamp[2*i]));

		FUNC28(mdp5_kms, FUNC24(pipe, i),
			FUNC11(post_clamp[2*i+1]) |
			FUNC12(post_clamp[2*i]));

		FUNC28(mdp5_kms, FUNC25(pipe, i),
			FUNC13(csc->pre_bias[i]));

		FUNC28(mdp5_kms, FUNC23(pipe, i),
			FUNC10(csc->post_bias[i]));
	}
}
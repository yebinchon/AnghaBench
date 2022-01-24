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
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int MDP5_PIPE_OP_MODE_CSC_1_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mdp5_kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mdp5_kms *mdp5_kms, enum mdp5_pipe pipe)
{
	uint32_t value = FUNC1(mdp5_kms, FUNC0(pipe)) &
			 ~MDP5_PIPE_OP_MODE_CSC_1_EN;

	FUNC2(mdp5_kms, FUNC0(pipe), value);
}
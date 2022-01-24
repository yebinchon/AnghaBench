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
struct parser_exec_state {struct intel_vgpu* vgpu; } ;
struct mi_display_flip_command_info {int dummy; } ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC2 (struct parser_exec_state*,struct mi_display_flip_command_info*) ; 
 int FUNC3 (struct parser_exec_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct parser_exec_state*,int) ; 
 int FUNC5 (struct parser_exec_state*,struct mi_display_flip_command_info*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct parser_exec_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct parser_exec_state*,struct mi_display_flip_command_info*) ; 

__attribute__((used)) static int FUNC10(struct parser_exec_state *s)
{
	struct mi_display_flip_command_info info;
	struct intel_vgpu *vgpu = s->vgpu;
	int ret;
	int i;
	int len = FUNC3(s);
	u32 valid_len = FUNC0(1);

	/* Flip Type == Stereo 3D Flip */
	if (FUNC1(2, 1, 0) == 2)
		valid_len++;
	ret = FUNC6(FUNC3(s),
			valid_len);
	if (ret)
		return ret;

	ret = FUNC5(s, &info);
	if (ret) {
		FUNC7("fail to decode MI display flip command\n");
		return ret;
	}

	ret = FUNC2(s, &info);
	if (ret) {
		FUNC7("invalid MI display flip command\n");
		return ret;
	}

	ret = FUNC9(s, &info);
	if (ret) {
		FUNC7("fail to update plane mmio\n");
		return ret;
	}

	for (i = 0; i < len; i++)
		FUNC8(s, FUNC4(s, i), MI_NOOP);
	return 0;
}
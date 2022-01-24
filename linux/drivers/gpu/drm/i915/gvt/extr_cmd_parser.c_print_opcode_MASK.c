#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct decode_info {int op_len; int nr_sub_op; TYPE_1__* sub_op; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  low; int /*<<< orphan*/  hi; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct decode_info*** ring_decode_info ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(u32 cmd, int ring_id)
{
	const struct decode_info *d_info;
	int i;

	d_info = ring_decode_info[ring_id][FUNC0(cmd)];
	if (d_info == NULL)
		return;

	FUNC1("opcode=0x%x %s sub_ops:",
			cmd >> (32 - d_info->op_len), d_info->name);

	for (i = 0; i < d_info->nr_sub_op; i++)
		FUNC2("0x%x ", FUNC3(cmd, d_info->sub_op[i].hi,
					d_info->sub_op[i].low));

	FUNC2("\n");
}
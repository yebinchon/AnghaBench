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
typedef  int u16 ;
struct devx_obj {int /*<<< orphan*/  dinbox; } ;

/* Variables and functions */
#define  MLX5_CMD_OP_DESTROY_FLOW_TABLE 129 
#define  MLX5_CMD_OP_DESTROY_TIR 128 
 int MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE ; 
 int MLX5_FLOW_DESTINATION_TYPE_TIR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  destroy_flow_table_in ; 
 int /*<<< orphan*/  general_obj_in_cmd_hdr ; 
 int /*<<< orphan*/  obj_id ; 
 int opcode ; 
 int /*<<< orphan*/  table_id ; 

bool FUNC1(void *obj, int *dest_id, int *dest_type)
{
	struct devx_obj *devx_obj = obj;
	u16 opcode = FUNC0(general_obj_in_cmd_hdr, devx_obj->dinbox, opcode);

	switch (opcode) {
	case MLX5_CMD_OP_DESTROY_TIR:
		*dest_type = MLX5_FLOW_DESTINATION_TYPE_TIR;
		*dest_id = FUNC0(general_obj_in_cmd_hdr, devx_obj->dinbox,
				    obj_id);
		return true;

	case MLX5_CMD_OP_DESTROY_FLOW_TABLE:
		*dest_type = MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE;
		*dest_id = FUNC0(destroy_flow_table_in, devx_obj->dinbox,
				    table_id);
		return true;
	default:
		return false;
	}
}
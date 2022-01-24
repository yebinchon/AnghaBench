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
typedef  int u32 ;
typedef  int u16 ;
struct slimpro_i2c_dev {int mbox_idx; struct acpi_pcct_shared_memory* pcc_comm_addr; } ;
struct acpi_pcct_shared_memory {int signature; int command; int status; } ;

/* Variables and functions */
 int PCC_CMD_GENERATE_DB_INT ; 
 int PCC_SIGNATURE ; 
 int PCC_STS_CMD_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLIMPRO_IIC_MSG_DWORD_COUNT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct slimpro_i2c_dev *ctx, u32 *msg)
{
	struct acpi_pcct_shared_memory *generic_comm_base = ctx->pcc_comm_addr;
	u32 *ptr = (void *)(generic_comm_base + 1);
	u16 status;
	int i;

	FUNC2(generic_comm_base->signature,
		   FUNC4(PCC_SIGNATURE | ctx->mbox_idx));

	FUNC2(generic_comm_base->command,
		   FUNC3(FUNC1(msg[0]) | PCC_CMD_GENERATE_DB_INT));

	status = FUNC5(FUNC0(generic_comm_base->status));
	status &= ~PCC_STS_CMD_COMPLETE;
	FUNC2(generic_comm_base->status, FUNC3(status));

	/* Copy the message to the PCC comm space */
	for (i = 0; i < SLIMPRO_IIC_MSG_DWORD_COUNT; i++)
		FUNC2(ptr[i], FUNC4(msg[i]));
}
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
struct vmw_cmdbuf_man {int /*<<< orphan*/  dev_priv; } ;
struct vmw_cmdbuf_header {int cb_context; TYPE_1__* cb_header; int /*<<< orphan*/  handle; struct vmw_cmdbuf_man* man; } ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int SVGA_CB_CONTEXT_MASK ; 
 int /*<<< orphan*/  SVGA_REG_COMMAND_HIGH ; 
 int /*<<< orphan*/  SVGA_REG_COMMAND_LOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct vmw_cmdbuf_header *header)
{
	struct vmw_cmdbuf_man *man = header->man;
	u32 val;

	val = FUNC1(header->handle);
	FUNC2(man->dev_priv, SVGA_REG_COMMAND_HIGH, val);

	val = FUNC0(header->handle);
	val |= header->cb_context & SVGA_CB_CONTEXT_MASK;
	FUNC2(man->dev_priv, SVGA_REG_COMMAND_LOW, val);

	return header->cb_header->status;
}
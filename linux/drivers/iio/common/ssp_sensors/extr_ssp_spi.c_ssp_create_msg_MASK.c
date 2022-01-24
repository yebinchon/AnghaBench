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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ssp_msg_header {int /*<<< orphan*/  data; void* options; void* length; int /*<<< orphan*/  cmd; } ;
struct ssp_msg {int length; int options; void* buffer; } ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  SSP_HEADER_SIZE ; 
 int SSP_HEADER_SIZE_ALIGNED ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_msg*) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct ssp_msg_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ssp_msg *FUNC5(u8 cmd, u16 len, u16 opt, u32 data)
{
	struct ssp_msg_header h;
	struct ssp_msg *msg;

	msg = FUNC3(sizeof(*msg), GFP_KERNEL);
	if (!msg)
		return NULL;

	h.cmd = cmd;
	h.length = FUNC0(len);
	h.options = FUNC0(opt);
	h.data = FUNC1(data);

	msg->buffer = FUNC3(SSP_HEADER_SIZE_ALIGNED + len,
			      GFP_KERNEL | GFP_DMA);
	if (!msg->buffer) {
		FUNC2(msg);
		return NULL;
	}

	msg->length = len;
	msg->options = opt;

	FUNC4(msg->buffer, &h, SSP_HEADER_SIZE);

	return msg;
}
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
struct vb2_dc_buf {TYPE_1__* db_attach; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_dc_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_dc_buf*) ; 

__attribute__((used)) static void FUNC4(void *mem_priv)
{
	struct vb2_dc_buf *buf = mem_priv;

	/* if vb2 works correctly you should never detach mapped buffer */
	if (FUNC0(buf->dma_addr))
		FUNC3(buf);

	/* detach this attachment */
	FUNC1(buf->db_attach->dmabuf, buf->db_attach);
	FUNC2(buf);
}
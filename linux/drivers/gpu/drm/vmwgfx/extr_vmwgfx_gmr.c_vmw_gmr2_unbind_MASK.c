#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct vmw_private {int dummy; } ;
typedef  int /*<<< orphan*/  define_cmd ;
struct TYPE_3__ {int gmrId; scalar_t__ numPages; } ;
typedef  TYPE_1__ SVGAFifoCmdDefineGMR2 ;

/* Variables and functions */
 int /*<<< orphan*/  SVGA_CMD_DEFINE_GMR2 ; 
 int* FUNC0 (struct vmw_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int) ; 

__attribute__((used)) static void FUNC4(struct vmw_private *dev_priv,
			    int gmr_id)
{
	SVGAFifoCmdDefineGMR2 define_cmd;
	uint32_t define_size = sizeof(define_cmd) + 4;
	uint32_t *cmd;

	cmd = FUNC0(dev_priv, define_size);
	if (FUNC2(cmd == NULL))
		return;

	define_cmd.gmrId = gmr_id;
	define_cmd.numPages = 0;

	*cmd++ = SVGA_CMD_DEFINE_GMR2;
	FUNC1(cmd, &define_cmd, sizeof(define_cmd));

	FUNC3(dev_priv, define_size);
}
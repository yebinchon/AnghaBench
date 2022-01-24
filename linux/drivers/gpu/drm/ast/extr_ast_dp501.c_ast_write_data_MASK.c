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
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct ast_private*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_private*) ; 
 scalar_t__ FUNC3 (struct ast_private*) ; 
 scalar_t__ FUNC4 (struct ast_private*) ; 

__attribute__((used)) static bool FUNC5(struct drm_device *dev, u8 data)
{
	struct ast_private *ast = dev->dev_private;

	if (FUNC4(ast)) {
		FUNC2(ast);
		FUNC0(ast, AST_IO_CRTC_PORT, 0x9a, 0x00, data);
		FUNC1(ast);
		if (FUNC3(ast)) {
			FUNC2(ast);
			return true;
		}
	}
	FUNC2(ast);
	return false;
}
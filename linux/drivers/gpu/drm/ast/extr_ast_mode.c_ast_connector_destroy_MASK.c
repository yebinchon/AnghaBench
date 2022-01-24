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
struct drm_connector {int dummy; } ;
struct ast_connector {int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 struct ast_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector)
{
	struct ast_connector *ast_connector = FUNC4(connector);
	FUNC0(ast_connector->i2c);
	FUNC2(connector);
	FUNC1(connector);
	FUNC3(connector);
}
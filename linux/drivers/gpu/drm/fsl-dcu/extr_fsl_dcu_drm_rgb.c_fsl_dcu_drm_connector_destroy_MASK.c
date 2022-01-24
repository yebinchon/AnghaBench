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
struct fsl_dcu_drm_connector {int /*<<< orphan*/  panel; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct fsl_dcu_drm_connector* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC4(struct drm_connector *connector)
{
	struct fsl_dcu_drm_connector *fsl_con = FUNC3(connector);

	FUNC1(connector);
	FUNC2(fsl_con->panel);
	FUNC0(connector);
}
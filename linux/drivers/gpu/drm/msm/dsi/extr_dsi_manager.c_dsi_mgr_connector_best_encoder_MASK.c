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
struct msm_dsi {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_connector*) ; 
 struct msm_dsi* FUNC2 (int) ; 
 struct drm_encoder* FUNC3 (struct msm_dsi*) ; 

__attribute__((used)) static struct drm_encoder *
FUNC4(struct drm_connector *connector)
{
	int id = FUNC1(connector);
	struct msm_dsi *msm_dsi = FUNC2(id);

	FUNC0("");
	return FUNC3(msm_dsi);
}
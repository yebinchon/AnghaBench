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
struct drm_encoder {int dummy; } ;
struct qxl_output {struct drm_encoder enc; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct qxl_output* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static struct drm_encoder *FUNC2(struct drm_connector *connector)
{
	struct qxl_output *qxl_output =
		FUNC1(connector);

	FUNC0("\n");
	return &qxl_output->enc;
}
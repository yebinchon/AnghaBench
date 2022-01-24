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
struct drm_connector {int /*<<< orphan*/ * encoder_ids; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct drm_encoder* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_encoder *FUNC1(struct drm_connector *connector)
{
	return FUNC0(connector->dev, NULL, connector->encoder_ids[0]);
}
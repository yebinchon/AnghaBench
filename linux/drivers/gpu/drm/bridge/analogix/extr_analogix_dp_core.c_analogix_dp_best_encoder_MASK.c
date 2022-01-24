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
struct drm_connector {int dummy; } ;
struct analogix_dp_device {struct drm_encoder* encoder; } ;

/* Variables and functions */
 struct analogix_dp_device* FUNC0 (struct drm_connector*) ; 

__attribute__((used)) static struct drm_encoder *
FUNC1(struct drm_connector *connector)
{
	struct analogix_dp_device *dp = FUNC0(connector);

	return dp->encoder;
}
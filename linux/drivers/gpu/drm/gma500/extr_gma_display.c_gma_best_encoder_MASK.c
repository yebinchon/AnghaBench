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
struct gma_encoder {struct drm_encoder base; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 struct gma_encoder* FUNC0 (struct drm_connector*) ; 

struct drm_encoder *FUNC1(struct drm_connector *connector)
{
	struct gma_encoder *gma_encoder = FUNC0(connector);

	return &gma_encoder->base;
}
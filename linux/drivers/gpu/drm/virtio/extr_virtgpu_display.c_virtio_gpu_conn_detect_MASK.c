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
struct TYPE_2__ {scalar_t__ enabled; } ;
struct virtio_gpu_output {TYPE_1__ info; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct virtio_gpu_output* FUNC0 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status FUNC1(
			struct drm_connector *connector,
			bool force)
{
	struct virtio_gpu_output *output =
		FUNC0(connector);

	if (output->info.enabled)
		return connector_status_connected;
	else
		return connector_status_disconnected;
}
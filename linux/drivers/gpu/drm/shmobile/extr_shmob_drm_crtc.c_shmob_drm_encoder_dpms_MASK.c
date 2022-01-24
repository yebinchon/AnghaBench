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
struct shmob_drm_encoder {int dpms; } ;
struct shmob_drm_connector {int dummy; } ;
struct shmob_drm_device {struct shmob_drm_connector connector; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_2__ {struct shmob_drm_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct shmob_drm_connector*,int) ; 
 struct shmob_drm_encoder* FUNC1 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC2(struct drm_encoder *encoder, int mode)
{
	struct shmob_drm_encoder *senc = FUNC1(encoder);
	struct shmob_drm_device *sdev = encoder->dev->dev_private;
	struct shmob_drm_connector *scon = &sdev->connector;

	if (senc->dpms == mode)
		return;

	FUNC0(scon, mode);

	senc->dpms = mode;
}
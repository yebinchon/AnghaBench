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
struct msm_kms {int dummy; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,int) ; 

__attribute__((used)) static void FUNC1(struct msm_kms *kms,
				  struct drm_encoder *encoder,
				  bool cmd_mode)
{
	FUNC0(encoder, cmd_mode);
}
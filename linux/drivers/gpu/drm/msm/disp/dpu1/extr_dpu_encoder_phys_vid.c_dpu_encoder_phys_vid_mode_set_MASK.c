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
struct drm_display_mode {int dummy; } ;
struct dpu_encoder_phys {struct drm_display_mode cached_mode; int /*<<< orphan*/  dpu_kms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_phys*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 

__attribute__((used)) static void FUNC4(
		struct dpu_encoder_phys *phys_enc,
		struct drm_display_mode *mode,
		struct drm_display_mode *adj_mode)
{
	if (!phys_enc || !phys_enc->dpu_kms) {
		FUNC1("invalid encoder/kms\n");
		return;
	}

	if (adj_mode) {
		phys_enc->cached_mode = *adj_mode;
		FUNC3(adj_mode);
		FUNC0(phys_enc, "caching mode:\n");
	}

	FUNC2(phys_enc);
}
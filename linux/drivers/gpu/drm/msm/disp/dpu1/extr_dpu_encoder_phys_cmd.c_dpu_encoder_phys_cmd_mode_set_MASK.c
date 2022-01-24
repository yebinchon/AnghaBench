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
struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {struct drm_display_mode cached_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_phys_cmd*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 
 struct dpu_encoder_phys_cmd* FUNC4 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static void FUNC5(
		struct dpu_encoder_phys *phys_enc,
		struct drm_display_mode *mode,
		struct drm_display_mode *adj_mode)
{
	struct dpu_encoder_phys_cmd *cmd_enc =
		FUNC4(phys_enc);

	if (!phys_enc || !mode || !adj_mode) {
		FUNC1("invalid args\n");
		return;
	}
	phys_enc->cached_mode = *adj_mode;
	FUNC0(cmd_enc, "caching mode:\n");
	FUNC3(adj_mode);

	FUNC2(phys_enc);
}
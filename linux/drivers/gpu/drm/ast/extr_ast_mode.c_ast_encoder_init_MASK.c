#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int dummy; } ;
struct TYPE_3__ {int possible_crtcs; } ;
struct ast_encoder {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_DAC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ast_enc_funcs ; 
 int /*<<< orphan*/  ast_enc_helper_funcs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ast_encoder* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev)
{
	struct ast_encoder *ast_encoder;

	ast_encoder = FUNC2(sizeof(struct ast_encoder), GFP_KERNEL);
	if (!ast_encoder)
		return -ENOMEM;

	FUNC1(dev, &ast_encoder->base, &ast_enc_funcs,
			 DRM_MODE_ENCODER_DAC, NULL);
	FUNC0(&ast_encoder->base, &ast_enc_helper_funcs);

	ast_encoder->base.possible_crtcs = 1;
	return 0;
}
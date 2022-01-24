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
struct TYPE_3__ {int /*<<< orphan*/  quantization_range; } ;
union hdmi_infoframe {TYPE_1__ avi; } ;
struct tda998x_priv {int /*<<< orphan*/  rgb_quant_range; int /*<<< orphan*/  connector; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIP_IF_FLAGS_IF2 ; 
 int /*<<< orphan*/  HDMI_QUANTIZATION_RANGE_FULL ; 
 int /*<<< orphan*/  REG_IF2_HB0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,struct drm_display_mode const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union hdmi_infoframe*) ; 

__attribute__((used)) static void
FUNC3(struct tda998x_priv *priv, const struct drm_display_mode *mode)
{
	union hdmi_infoframe frame;

	FUNC0(&frame.avi,
						 &priv->connector, mode);
	frame.avi.quantization_range = HDMI_QUANTIZATION_RANGE_FULL;
	FUNC1(&frame.avi, &priv->connector, mode,
					   priv->rgb_quant_range);

	FUNC2(priv, DIP_IF_FLAGS_IF2, REG_IF2_HB0, &frame);
}
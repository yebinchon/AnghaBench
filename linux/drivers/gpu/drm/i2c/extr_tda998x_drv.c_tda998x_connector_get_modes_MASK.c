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
struct tda998x_priv {scalar_t__ rev; int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  sink_has_audio; int /*<<< orphan*/  cec_notify; TYPE_1__* hdmi; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_TX4 ; 
 scalar_t__ TDA19988 ; 
 int /*<<< orphan*/  TX4_PD_RAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct edid*) ; 
 struct tda998x_priv* FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 struct edid* FUNC6 (struct drm_connector*,int /*<<< orphan*/ ,struct tda998x_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct edid*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_edid_block ; 
 int /*<<< orphan*/  FUNC10 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct tda998x_priv*) ; 

__attribute__((used)) static int FUNC13(struct drm_connector *connector)
{
	struct tda998x_priv *priv = FUNC1(connector);
	struct edid *edid;
	int n;

	/*
	 * If we get killed while waiting for the HPD timeout, return
	 * no modes found: we are not in a restartable path, so we
	 * can't handle signals gracefully.
	 */
	if (FUNC12(priv))
		return 0;

	if (priv->rev == TDA19988)
		FUNC10(priv, REG_TX4, TX4_PD_RAM);

	edid = FUNC6(connector, read_edid_block, priv);

	if (priv->rev == TDA19988)
		FUNC11(priv, REG_TX4, TX4_PD_RAM);

	if (!edid) {
		FUNC2(&priv->hdmi->dev, "failed to read EDID\n");
		return 0;
	}

	FUNC4(connector, edid);
	FUNC0(priv->cec_notify, edid);

	FUNC8(&priv->audio_mutex);
	n = FUNC3(connector, edid);
	priv->sink_has_audio = FUNC5(edid);
	FUNC9(&priv->audio_mutex);

	FUNC7(edid);

	return n;
}
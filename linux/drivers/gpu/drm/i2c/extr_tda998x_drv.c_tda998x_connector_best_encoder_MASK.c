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
struct TYPE_2__ {struct drm_encoder* encoder; } ;
struct tda998x_priv {TYPE_1__ bridge; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 struct tda998x_priv* FUNC0 (struct drm_connector*) ; 

__attribute__((used)) static struct drm_encoder *
FUNC1(struct drm_connector *connector)
{
	struct tda998x_priv *priv = FUNC0(connector);

	return priv->bridge.encoder;
}
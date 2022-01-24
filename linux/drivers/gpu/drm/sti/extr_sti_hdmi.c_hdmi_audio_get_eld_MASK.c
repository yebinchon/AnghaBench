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
typedef  int /*<<< orphan*/  uint8_t ;
struct sti_hdmi {struct drm_connector* drm_connector; } ;
struct drm_connector {int /*<<< orphan*/  eld; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct sti_hdmi* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,size_t) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data, uint8_t *buf, size_t len)
{
	struct sti_hdmi *hdmi = FUNC1(dev);
	struct drm_connector *connector = hdmi->drm_connector;

	FUNC0("\n");
	FUNC2(buf, connector->eld, FUNC3(sizeof(connector->eld), len));

	return 0;
}
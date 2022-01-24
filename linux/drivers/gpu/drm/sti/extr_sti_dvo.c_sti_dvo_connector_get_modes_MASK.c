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
struct sti_dvo_connector {struct sti_dvo* dvo; } ;
struct sti_dvo {scalar_t__ panel; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct sti_dvo_connector* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector)
{
	struct sti_dvo_connector *dvo_connector
		= FUNC1(connector);
	struct sti_dvo *dvo = dvo_connector->dvo;

	if (dvo->panel)
		return FUNC0(dvo->panel);

	return 0;
}
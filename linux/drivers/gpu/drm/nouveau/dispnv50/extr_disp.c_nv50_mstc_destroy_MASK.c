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
struct nv50_mstc {int /*<<< orphan*/  port; int /*<<< orphan*/  connector; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_mstc*) ; 
 struct nv50_mstc* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static void
FUNC4(struct drm_connector *connector)
{
	struct nv50_mstc *mstc = FUNC3(connector);

	FUNC0(&mstc->connector);
	FUNC1(mstc->port);

	FUNC2(mstc);
}
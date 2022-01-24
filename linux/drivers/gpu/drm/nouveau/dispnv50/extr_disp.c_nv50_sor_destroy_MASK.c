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
struct TYPE_2__ {int /*<<< orphan*/  mstm; } ;
struct nouveau_encoder {TYPE_1__ dp; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 struct nouveau_encoder* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct drm_encoder *encoder)
{
	struct nouveau_encoder *nv_encoder = FUNC2(encoder);
	FUNC3(&nv_encoder->dp.mstm);
	FUNC0(encoder);
	FUNC1(encoder);
}
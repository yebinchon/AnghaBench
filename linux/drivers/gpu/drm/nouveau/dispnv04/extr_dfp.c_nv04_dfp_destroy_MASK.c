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
struct nouveau_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct drm_encoder*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 TYPE_1__* FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_encoder*) ; 
 struct nouveau_encoder* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct nouveau_encoder *nv_encoder = FUNC3(encoder);

	if (FUNC1(encoder))
		FUNC1(encoder)->destroy(encoder);

	FUNC0(encoder);
	FUNC2(nv_encoder);
}
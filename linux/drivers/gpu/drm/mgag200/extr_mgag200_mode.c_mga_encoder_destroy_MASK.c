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
struct mga_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct mga_encoder*) ; 
 struct mga_encoder* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder)
{
	struct mga_encoder *mga_encoder = FUNC2(encoder);
	FUNC0(encoder);
	FUNC1(mga_encoder);
}
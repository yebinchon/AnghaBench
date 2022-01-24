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
struct nv50_msto {int /*<<< orphan*/  encoder; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_msto*) ; 
 struct nv50_msto* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC3(struct drm_encoder *encoder)
{
	struct nv50_msto *msto = FUNC2(encoder);
	FUNC0(&msto->encoder);
	FUNC1(msto);
}
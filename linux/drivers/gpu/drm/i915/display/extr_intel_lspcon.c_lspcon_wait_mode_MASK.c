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
struct intel_lspcon {int dummy; } ;
typedef  enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct intel_lspcon*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static enum drm_lspcon_mode FUNC5(struct intel_lspcon *lspcon,
					     enum drm_lspcon_mode mode)
{
	enum drm_lspcon_mode current_mode;

	current_mode = FUNC2(lspcon);
	if (current_mode == mode)
		goto out;

	FUNC0("Waiting for LSPCON mode %s to settle\n",
		      FUNC3(mode));

	FUNC4((current_mode = FUNC2(lspcon)) == mode, 400);
	if (current_mode != mode)
		FUNC1("LSPCON mode hasn't settled\n");

out:
	FUNC0("Current LSPCON mode %s\n",
		      FUNC3(current_mode));

	return current_mode;
}
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
struct drm_prime_file_private {int /*<<< orphan*/  dmabufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct drm_prime_file_private *prime_fpriv)
{
	/* by now drm_gem_release should've made sure the list is empty */
	FUNC1(!FUNC0(&prime_fpriv->dmabufs));
}
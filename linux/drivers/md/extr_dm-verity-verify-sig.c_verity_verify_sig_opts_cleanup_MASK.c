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
struct dm_verity_sig_opts {scalar_t__ sig_size; int /*<<< orphan*/ * sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct dm_verity_sig_opts *sig_opts)
{
	FUNC0(sig_opts->sig);
	sig_opts->sig = NULL;
	sig_opts->sig_size = 0;
}
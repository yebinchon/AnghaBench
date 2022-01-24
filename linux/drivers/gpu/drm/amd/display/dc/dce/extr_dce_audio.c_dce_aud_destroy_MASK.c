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
struct dce_audio {int dummy; } ;
struct audio {int dummy; } ;

/* Variables and functions */
 struct dce_audio* FUNC0 (struct audio*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce_audio*) ; 

void FUNC2(struct audio **audio)
{
	struct dce_audio *aud = FUNC0(*audio);

	FUNC1(aud);
	*audio = NULL;
}
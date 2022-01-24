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
struct sti_tvout {int /*<<< orphan*/ * dvo; int /*<<< orphan*/ * hda; int /*<<< orphan*/ * hdmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct sti_tvout *tvout)
{
	if (tvout->hdmi)
		FUNC0(tvout->hdmi);
	tvout->hdmi = NULL;

	if (tvout->hda)
		FUNC0(tvout->hda);
	tvout->hda = NULL;

	if (tvout->dvo)
		FUNC0(tvout->dvo);
	tvout->dvo = NULL;
}
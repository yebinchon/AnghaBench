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
struct wf_sensor {int /*<<< orphan*/  name; struct wf_ad7417_priv* priv; } ;
struct wf_ad7417_priv {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wf_ad7417_release ; 

__attribute__((used)) static void FUNC2(struct wf_sensor *sr)
{
	struct wf_ad7417_priv *pv = sr->priv;

	FUNC0(sr->name);
	FUNC1(&pv->ref, wf_ad7417_release);
}
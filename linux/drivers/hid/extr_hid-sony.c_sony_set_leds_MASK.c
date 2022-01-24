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
struct sony_sc {int quirks; } ;

/* Variables and functions */
 int BUZZ_CONTROLLER ; 
 int /*<<< orphan*/  SONY_WORKER_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct sony_sc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sony_sc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sony_sc *sc)
{
	if (!(sc->quirks & BUZZ_CONTROLLER))
		FUNC1(sc, SONY_WORKER_STATE);
	else
		FUNC0(sc);
}
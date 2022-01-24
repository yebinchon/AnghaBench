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
struct cx24117_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cx24117_list_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct cx24117_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cx24117_priv *priv)
{
	FUNC1(&cx24117_list_mutex);
	if (priv != NULL)
		FUNC0(priv);
	FUNC2(&cx24117_list_mutex);
}
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
struct serio_raw {int dead; int /*<<< orphan*/  kref; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; } ;
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct serio*) ; 
 struct serio_raw* FUNC6 (struct serio*) ; 
 int /*<<< orphan*/  serio_raw_free ; 
 int /*<<< orphan*/  FUNC7 (struct serio_raw*) ; 
 int /*<<< orphan*/  serio_raw_mutex ; 
 int /*<<< orphan*/  FUNC8 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct serio *serio)
{
	struct serio_raw *serio_raw = FUNC6(serio);

	FUNC2(&serio_raw->dev);

	FUNC3(&serio_raw_mutex);
	serio_raw->dead = true;
	FUNC1(&serio_raw->node);
	FUNC4(&serio_raw_mutex);

	FUNC7(serio_raw);

	FUNC5(serio);
	FUNC0(&serio_raw->kref, serio_raw_free);

	FUNC8(serio, NULL);
}
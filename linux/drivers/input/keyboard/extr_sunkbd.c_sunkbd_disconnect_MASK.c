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
struct sunkbd {int /*<<< orphan*/  dev; } ;
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sunkbd*) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 struct sunkbd* FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sunkbd*,int) ; 

__attribute__((used)) static void FUNC6(struct serio *serio)
{
	struct sunkbd *sunkbd = FUNC3(serio);

	FUNC5(sunkbd, false);
	FUNC0(sunkbd->dev);
	FUNC2(serio);
	FUNC4(serio, NULL);
	FUNC1(sunkbd);
}
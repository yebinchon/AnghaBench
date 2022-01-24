#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int dummy; } ;
struct input_dev {int dummy; } ;
struct arizona_haptics {TYPE_1__* arizona; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {scalar_t__ dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct arizona_haptics* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,char*) ; 
 struct snd_soc_component* FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct input_dev *input)
{
	struct arizona_haptics *haptics = FUNC1(input);
	struct snd_soc_component *component;

	FUNC0(&haptics->work);

	if (haptics->arizona->dapm) {
		component = FUNC3(haptics->arizona->dapm);
		FUNC2(component, "HAPTICS");
	}
}
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
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;
typedef  int /*<<< orphan*/  cpu_groups ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cpumask const* cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nb_available_cpus ; 
 struct cpumask* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(cpumask_var_t **pcpu_groups)
{
	int num_groups = 0;
	cpumask_var_t tmp, *cpu_groups;

	if (!FUNC0(&tmp, GFP_KERNEL))
		return -ENOMEM;

	cpu_groups = FUNC7(nb_available_cpus, sizeof(cpu_groups),
			     GFP_KERNEL);
	if (!cpu_groups)
		return -ENOMEM;

	FUNC3(tmp, cpu_online_mask);

	while (!FUNC4(tmp)) {
		const struct cpumask *cpu_group =
			FUNC8(FUNC2(tmp));

		if (!FUNC0(&cpu_groups[num_groups], GFP_KERNEL)) {
			FUNC5(num_groups, &cpu_groups);
			return -ENOMEM;
		}
		FUNC3(cpu_groups[num_groups++], cpu_group);
		FUNC1(tmp, tmp, cpu_group);
	}

	FUNC6(tmp);
	*pcpu_groups = cpu_groups;

	return num_groups;
}
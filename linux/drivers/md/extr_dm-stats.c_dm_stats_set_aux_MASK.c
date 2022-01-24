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
struct dm_stats {int /*<<< orphan*/  mutex; } ;
struct dm_stat {char const* aux_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dm_stat* FUNC0 (struct dm_stats*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dm_stats *stats, int id, const char *aux_data)
{
	struct dm_stat *s;
	const char *new_aux_data;

	FUNC3(&stats->mutex);

	s = FUNC0(stats, id);
	if (!s) {
		FUNC4(&stats->mutex);
		return -ENOENT;
	}

	new_aux_data = FUNC2(aux_data, GFP_KERNEL);
	if (!new_aux_data) {
		FUNC4(&stats->mutex);
		return -ENOMEM;
	}

	FUNC1(s->aux_data);
	s->aux_data = new_aux_data;

	FUNC4(&stats->mutex);

	return 0;
}
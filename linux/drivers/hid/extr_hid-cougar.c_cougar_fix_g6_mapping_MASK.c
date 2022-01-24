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

/* Variables and functions */
 scalar_t__ COUGAR_KEY_G6 ; 
 scalar_t__ KEY_F18 ; 
 scalar_t__ KEY_SPACE ; 
 scalar_t__** cougar_mapping ; 
 scalar_t__ g6_is_space ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;

	for (i = 0; cougar_mapping[i][0]; i++) {
		if (cougar_mapping[i][0] == COUGAR_KEY_G6) {
			cougar_mapping[i][1] =
				g6_is_space ? KEY_SPACE : KEY_F18;
			FUNC0("cougar: G6 mapped to %s\n",
				g6_is_space ? "space" : "F18");
			return;
		}
	}
	FUNC1("cougar: no mappings defined for G6/spacebar");
}
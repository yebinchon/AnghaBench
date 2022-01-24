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
struct sa_path_rec {scalar_t__ rec_type; } ;
struct ib_user_path_rec {int dummy; } ;

/* Variables and functions */
 scalar_t__ SA_PATH_REC_TYPE_OPA ; 
 int /*<<< orphan*/  FUNC0 (struct ib_user_path_rec*,struct sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC1 (struct sa_path_rec*,struct sa_path_rec*) ; 

void FUNC2(struct ib_user_path_rec *dst,
			      struct sa_path_rec *src)
{
	struct sa_path_rec rec;

	if (src->rec_type == SA_PATH_REC_TYPE_OPA) {
		FUNC1(&rec, src);
		FUNC0(dst, &rec);
		return;
	}
	FUNC0(dst, src);
}
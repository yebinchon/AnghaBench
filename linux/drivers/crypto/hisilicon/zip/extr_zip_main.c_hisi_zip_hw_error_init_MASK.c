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
struct hisi_zip {int /*<<< orphan*/  qm; } ;

/* Variables and functions */
 int QM_ACC_WB_NOT_READY_TIMEOUT ; 
 int /*<<< orphan*/  QM_BASE_CE ; 
 int QM_BASE_NFE ; 
 int /*<<< orphan*/  QM_DB_RANDOM_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_zip*,int) ; 

__attribute__((used)) static void FUNC2(struct hisi_zip *hisi_zip)
{
	FUNC0(&hisi_zip->qm, QM_BASE_CE,
			      QM_BASE_NFE | QM_ACC_WB_NOT_READY_TIMEOUT, 0,
			      QM_DB_RANDOM_INVALID);
	FUNC1(hisi_zip, true);
}
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
struct iser_conn {int /*<<< orphan*/  stop_completion; } ;
struct iscsi_conn {struct iser_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int FUNC0 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct iscsi_cls_conn *cls_conn)
{
	struct iscsi_conn *iscsi_conn;
	struct iser_conn *iser_conn;

	iscsi_conn = cls_conn->dd_data;
	iser_conn = iscsi_conn->dd_data;
	FUNC1(&iser_conn->stop_completion);

	return FUNC0(cls_conn);
}
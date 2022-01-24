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
struct work_struct {int dummy; } ;
struct serio_event {int type; int /*<<< orphan*/  object; } ;

/* Variables and functions */
#define  SERIO_ATTACH_DRIVER 132 
#define  SERIO_RECONNECT_PORT 131 
#define  SERIO_RECONNECT_SUBTREE 130 
#define  SERIO_REGISTER_PORT 129 
#define  SERIO_RESCAN_PORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct serio_event*) ; 
 struct serio_event* FUNC7 () ; 
 int /*<<< orphan*/  serio_mutex ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct work_struct *work)
{
	struct serio_event *event;

	FUNC0(&serio_mutex);

	while ((event = FUNC7())) {

		switch (event->type) {

		case SERIO_REGISTER_PORT:
			FUNC2(event->object);
			break;

		case SERIO_RECONNECT_PORT:
			FUNC8(event->object);
			break;

		case SERIO_RESCAN_PORT:
			FUNC4(event->object);
			FUNC5(event->object);
			break;

		case SERIO_RECONNECT_SUBTREE:
			FUNC9(event->object);
			break;

		case SERIO_ATTACH_DRIVER:
			FUNC3(event->object);
			break;
		}

		FUNC10(event->object, event->type);
		FUNC6(event);
	}

	FUNC1(&serio_mutex);
}
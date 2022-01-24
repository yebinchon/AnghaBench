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
struct intel_engine_cs {int class; } ;

/* Variables and functions */
#define  COPY_ENGINE_CLASS 131 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  RENDER_CLASS 130 
#define  VIDEO_DECODE_CLASS 129 
#define  VIDEO_ENHANCEMENT_CLASS 128 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_cs*) ; 

int FUNC6(struct intel_engine_cs *engine)
{
	FUNC2(engine);

	switch (engine->class) {
	case RENDER_CLASS:
		FUNC3(engine);
		break;
	case VIDEO_DECODE_CLASS:
		FUNC4(engine);
		break;
	case COPY_ENGINE_CLASS:
		FUNC1(engine);
		break;
	case VIDEO_ENHANCEMENT_CLASS:
		FUNC5(engine);
		break;
	default:
		FUNC0(engine->class);
		return -ENODEV;
	}

	return 0;
}
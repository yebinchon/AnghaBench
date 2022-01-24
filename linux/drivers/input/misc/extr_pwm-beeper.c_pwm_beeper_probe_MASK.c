#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pwm_state {int enabled; } ;
struct pwm_beeper {int bell_frequency; TYPE_2__* input; int /*<<< orphan*/  work; int /*<<< orphan*/  amplifier; int /*<<< orphan*/  pwm; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_7__ {char* name; char* phys; int /*<<< orphan*/  close; int /*<<< orphan*/  event; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_SND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_BELL ; 
 int /*<<< orphan*/  SND_TONE ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int FUNC5 (struct device*,char*,int*) ; 
 TYPE_2__* FUNC6 (struct device*) ; 
 struct pwm_beeper* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct pwm_beeper*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct pwm_beeper*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int /*<<< orphan*/  pwm_beeper_close ; 
 int /*<<< orphan*/  pwm_beeper_event ; 
 int /*<<< orphan*/  pwm_beeper_work ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct pwm_state*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct pwm_beeper *beeper;
	struct pwm_state state;
	u32 bell_frequency;
	int error;

	beeper = FUNC7(dev, sizeof(*beeper), GFP_KERNEL);
	if (!beeper)
		return -ENOMEM;

	beeper->pwm = FUNC8(dev, NULL);
	if (FUNC1(beeper->pwm)) {
		error = FUNC2(beeper->pwm);
		if (error != -EPROBE_DEFER)
			FUNC4(dev, "Failed to request PWM device: %d\n",
				error);
		return error;
	}

	/* Sync up PWM state and ensure it is off. */
	FUNC15(beeper->pwm, &state);
	state.enabled = false;
	error = FUNC14(beeper->pwm, &state);
	if (error) {
		FUNC4(dev, "failed to apply initial PWM state: %d\n",
			error);
		return error;
	}

	beeper->amplifier = FUNC9(dev, "amp");
	if (FUNC1(beeper->amplifier)) {
		error = FUNC2(beeper->amplifier);
		if (error != -EPROBE_DEFER)
			FUNC4(dev, "Failed to get 'amp' regulator: %d\n",
				error);
		return error;
	}

	FUNC0(&beeper->work, pwm_beeper_work);

	error = FUNC5(dev, "beeper-hz", &bell_frequency);
	if (error) {
		bell_frequency = 1000;
		FUNC3(dev,
			"failed to parse 'beeper-hz' property, using default: %uHz\n",
			bell_frequency);
	}

	beeper->bell_frequency = bell_frequency;

	beeper->input = FUNC6(dev);
	if (!beeper->input) {
		FUNC4(dev, "Failed to allocate input device\n");
		return -ENOMEM;
	}

	beeper->input->name = "pwm-beeper";
	beeper->input->phys = "pwm/input0";
	beeper->input->id.bustype = BUS_HOST;
	beeper->input->id.vendor = 0x001f;
	beeper->input->id.product = 0x0001;
	beeper->input->id.version = 0x0100;

	FUNC11(beeper->input, EV_SND, SND_TONE);
	FUNC11(beeper->input, EV_SND, SND_BELL);

	beeper->input->event = pwm_beeper_event;
	beeper->input->close = pwm_beeper_close;

	FUNC12(beeper->input, beeper);

	error = FUNC10(beeper->input);
	if (error) {
		FUNC4(dev, "Failed to register input device: %d\n", error);
		return error;
	}

	FUNC13(pdev, beeper);

	return 0;
}
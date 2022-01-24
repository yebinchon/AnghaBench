#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {TYPE_1__ dev; TYPE_3__* algo_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int udelay; struct psb_intel_i2c_chan* data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  (* setscl ) (struct psb_intel_i2c_chan*,int) ;int /*<<< orphan*/  (* setsda ) (struct psb_intel_i2c_chan*,int) ;} ;
struct psb_intel_i2c_chan {TYPE_4__ adapter; TYPE_3__ algo; int /*<<< orphan*/  reg; struct drm_device* drm_dev; } ;
struct gma_encoder {struct psb_intel_i2c_chan* ddc_bus; } ;
struct drm_psb_private {int /*<<< orphan*/  lpc_gpio_base; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {TYPE_2__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ I2C_NAME_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  get_clock ; 
 int /*<<< orphan*/  get_data ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,struct psb_intel_i2c_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct psb_intel_i2c_chan*) ; 
 struct psb_intel_i2c_chan* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct psb_intel_i2c_chan*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct psb_intel_i2c_chan*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct gma_encoder* FUNC7 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct gma_encoder *gma_encoder = FUNC7(encoder);
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct psb_intel_i2c_chan *chan;

	chan = FUNC3(sizeof(struct psb_intel_i2c_chan), GFP_KERNEL);
	if (!chan)
		return;

	chan->drm_dev = dev;
	chan->reg = dev_priv->lpc_gpio_base;
	FUNC6(chan->adapter.name, "gma500 LPC",  I2C_NAME_SIZE - 1);
	chan->adapter.owner = THIS_MODULE;
	chan->adapter.algo_data = &chan->algo;
	chan->adapter.dev.parent = &dev->pdev->dev;
	chan->algo.setsda = set_data;
	chan->algo.setscl = set_clock;
	chan->algo.getsda = get_data;
	chan->algo.getscl = get_clock;
	chan->algo.udelay = 100;
	chan->algo.timeout = FUNC9(2200);
	chan->algo.data = chan;

	FUNC1(&chan->adapter, chan);

	FUNC5(chan, 1);
	FUNC4(chan, 1);
	FUNC8(50);

	if (FUNC0(&chan->adapter)) {
		FUNC2(chan);
		return;
	}

	gma_encoder->ddc_bus = chan;
}
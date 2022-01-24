#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;
struct brcmstb_gpio_priv {scalar_t__ reg_base; } ;
struct TYPE_2__ {int (* read_reg ) (scalar_t__) ;int /*<<< orphan*/  bgpio_lock; int /*<<< orphan*/  (* write_reg ) (scalar_t__,int) ;} ;
struct brcmstb_gpio_bank {TYPE_1__ gc; int /*<<< orphan*/  id; struct brcmstb_gpio_priv* parent_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct brcmstb_gpio_bank*) ; 
 struct brcmstb_gpio_bank* FUNC5 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC15(struct irq_data *d, unsigned int type)
{
	struct gpio_chip *gc = FUNC6(d);
	struct brcmstb_gpio_bank *bank = FUNC5(gc);
	struct brcmstb_gpio_priv *priv = bank->parent_priv;
	u32 mask = FUNC0(FUNC4(d->hwirq, bank));
	u32 edge_insensitive, iedge_insensitive;
	u32 edge_config, iedge_config;
	u32 level, ilevel;
	unsigned long flags;

	switch (type) {
	case IRQ_TYPE_LEVEL_LOW:
		level = mask;
		edge_config = 0;
		edge_insensitive = 0;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		level = mask;
		edge_config = mask;
		edge_insensitive = 0;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		level = 0;
		edge_config = 0;
		edge_insensitive = 0;
		break;
	case IRQ_TYPE_EDGE_RISING:
		level = 0;
		edge_config = mask;
		edge_insensitive = 0;
		break;
	case IRQ_TYPE_EDGE_BOTH:
		level = 0;
		edge_config = 0;  /* don't care, but want known value */
		edge_insensitive = mask;
		break;
	default:
		return -EINVAL;
	}

	FUNC7(&bank->gc.bgpio_lock, flags);

	iedge_config = bank->gc.read_reg(priv->reg_base +
			FUNC1(bank->id)) & ~mask;
	iedge_insensitive = bank->gc.read_reg(priv->reg_base +
			FUNC2(bank->id)) & ~mask;
	ilevel = bank->gc.read_reg(priv->reg_base +
			FUNC3(bank->id)) & ~mask;

	bank->gc.write_reg(priv->reg_base + FUNC1(bank->id),
			iedge_config | edge_config);
	bank->gc.write_reg(priv->reg_base + FUNC2(bank->id),
			iedge_insensitive | edge_insensitive);
	bank->gc.write_reg(priv->reg_base + FUNC3(bank->id),
			ilevel | level);

	FUNC8(&bank->gc.bgpio_lock, flags);
	return 0;
}
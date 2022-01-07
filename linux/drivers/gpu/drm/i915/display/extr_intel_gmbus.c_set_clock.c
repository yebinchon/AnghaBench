
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gmbus {int gpio_reg; TYPE_1__* dev_priv; } ;
struct TYPE_2__ {struct intel_uncore uncore; } ;


 int GPIO_CLOCK_DIR_IN ;
 int GPIO_CLOCK_DIR_MASK ;
 int GPIO_CLOCK_DIR_OUT ;
 int GPIO_CLOCK_VAL_MASK ;
 int get_reserved (struct intel_gmbus*) ;
 int intel_uncore_posting_read (struct intel_uncore*,int ) ;
 int intel_uncore_write_notrace (struct intel_uncore*,int ,int) ;

__attribute__((used)) static void set_clock(void *data, int state_high)
{
 struct intel_gmbus *bus = data;
 struct intel_uncore *uncore = &bus->dev_priv->uncore;
 u32 reserved = get_reserved(bus);
 u32 clock_bits;

 if (state_high)
  clock_bits = GPIO_CLOCK_DIR_IN | GPIO_CLOCK_DIR_MASK;
 else
  clock_bits = GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_DIR_MASK |
        GPIO_CLOCK_VAL_MASK;

 intel_uncore_write_notrace(uncore,
       bus->gpio_reg,
       reserved | clock_bits);
 intel_uncore_posting_read(uncore, bus->gpio_reg);
}

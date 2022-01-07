
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grover_beep_info {int freq_regs; int enable_reg; } ;
struct TYPE_2__ {struct grover_beep_info grover; } ;
struct sparcspkr_state {int (* event ) (struct input_dev*,int ,int ,int ) ;struct input_dev* input_dev; TYPE_1__ u; } ;
struct platform_device {int * resource; } ;
struct input_dev {int dummy; } ;


 int EV_SND ;
 int SND_BELL ;
 int input_unregister_device (struct input_dev*) ;
 int kfree (struct sparcspkr_state*) ;
 int of_iounmap (int *,int ,int) ;
 struct sparcspkr_state* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct input_dev*,int ,int ,int ) ;

__attribute__((used)) static int grover_remove(struct platform_device *op)
{
 struct sparcspkr_state *state = platform_get_drvdata(op);
 struct grover_beep_info *info = &state->u.grover;
 struct input_dev *input_dev = state->input_dev;


 state->event(input_dev, EV_SND, SND_BELL, 0);

 input_unregister_device(input_dev);

 of_iounmap(&op->resource[3], info->enable_reg, 1);
 of_iounmap(&op->resource[2], info->freq_regs, 2);

 kfree(state);

 return 0;
}

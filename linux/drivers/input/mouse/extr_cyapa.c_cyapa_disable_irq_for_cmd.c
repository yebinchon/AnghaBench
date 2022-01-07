
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_dev {int users; } ;
struct cyapa {scalar_t__ gen; TYPE_2__* ops; scalar_t__ operational; TYPE_1__* client; struct input_dev* input; } ;
struct TYPE_4__ {int (* set_power_mode ) (struct cyapa*,int ,int ,int ) ;} ;
struct TYPE_3__ {int irq; } ;


 scalar_t__ CYAPA_GEN5 ;
 int CYAPA_PM_ACTIVE ;
 int PWR_MODE_OFF ;
 int disable_irq (int ) ;
 int stub1 (struct cyapa*,int ,int ,int ) ;

__attribute__((used)) static void cyapa_disable_irq_for_cmd(struct cyapa *cyapa)
{
 struct input_dev *input = cyapa->input;

 if (!input || !input->users) {
  if (cyapa->gen >= CYAPA_GEN5)
   disable_irq(cyapa->client->irq);
  if (!input || cyapa->operational)
   cyapa->ops->set_power_mode(cyapa,
     PWR_MODE_OFF, 0, CYAPA_PM_ACTIVE);
 }
}

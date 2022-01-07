
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp55xx_chip {TYPE_1__* cfg; } ;
struct TYPE_2__ {int (* run_engine ) (struct lp55xx_chip*,int) ;} ;


 int stub1 (struct lp55xx_chip*,int) ;

__attribute__((used)) static inline void lp55xx_run_engine(struct lp55xx_chip *chip, bool start)
{
 if (chip->cfg->run_engine)
  chip->cfg->run_engine(chip, start);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9034_touch {int da9034_dev; } ;


 int DA9034_STATUS_PEN_DOWN ;
 int da903x_query_status (int ,int ) ;

__attribute__((used)) static inline int is_pen_down(struct da9034_touch *touch)
{
 return da903x_query_status(touch->da9034_dev, DA9034_STATUS_PEN_DOWN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct navpoint {int dummy; } ;
struct input_dev {int dummy; } ;


 struct navpoint* input_get_drvdata (struct input_dev*) ;
 int navpoint_down (struct navpoint*) ;

__attribute__((used)) static void navpoint_close(struct input_dev *input)
{
 struct navpoint *navpoint = input_get_drvdata(input);

 navpoint_down(navpoint);
}

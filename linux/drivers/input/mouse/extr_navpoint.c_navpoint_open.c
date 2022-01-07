
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct navpoint {int dummy; } ;
struct input_dev {int dummy; } ;


 struct navpoint* input_get_drvdata (struct input_dev*) ;
 int navpoint_up (struct navpoint*) ;

__attribute__((used)) static int navpoint_open(struct input_dev *input)
{
 struct navpoint *navpoint = input_get_drvdata(input);

 navpoint_up(navpoint);

 return 0;
}

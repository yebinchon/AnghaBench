
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int dummy; } ;
struct input_dev {int dummy; } ;


 struct ucb1400_ts* input_get_drvdata (struct input_dev*) ;
 int ucb1400_ts_start (struct ucb1400_ts*) ;

__attribute__((used)) static int ucb1400_ts_open(struct input_dev *idev)
{
 struct ucb1400_ts *ucb = input_get_drvdata(idev);

 ucb1400_ts_start(ucb);

 return 0;
}

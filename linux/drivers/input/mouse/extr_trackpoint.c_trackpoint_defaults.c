
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trackpoint_data {int dummy; } ;


 int TRACKPOINT_SET_POWER_ON_DEFAULT (struct trackpoint_data*,int ) ;
 int draghys ;
 int drift_time ;
 int ext_dev ;
 int inertia ;
 int jenks ;
 int mindrag ;
 int press_to_select ;
 int reach ;
 int sensitivity ;
 int skipback ;
 int speed ;
 int thresh ;
 int upthresh ;
 int ztime ;

__attribute__((used)) static void trackpoint_defaults(struct trackpoint_data *tp)
{
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, sensitivity);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, speed);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, reach);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, draghys);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, mindrag);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, thresh);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, upthresh);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, ztime);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, jenks);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, drift_time);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, inertia);


 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, press_to_select);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, skipback);
 TRACKPOINT_SET_POWER_ON_DEFAULT(tp, ext_dev);
}

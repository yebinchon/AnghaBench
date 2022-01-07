
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync; } ;
struct wiimote_data {TYPE_1__ state; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void wiimote_cmd_release(struct wiimote_data *wdata)
{
 mutex_unlock(&wdata->state.sync);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ICN8318_EVENT_UPDATE1 ;
 scalar_t__ ICN8318_EVENT_UPDATE2 ;

__attribute__((used)) static inline bool icn8318_touch_active(u8 event)
{
 return (event == ICN8318_EVENT_UPDATE1) ||
        (event == ICN8318_EVENT_UPDATE2);
}

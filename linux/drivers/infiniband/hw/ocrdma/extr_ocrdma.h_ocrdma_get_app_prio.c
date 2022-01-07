
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 ocrdma_get_app_prio(u8 *app_prio, u8 prio)
{
 return *(app_prio + prio);
}

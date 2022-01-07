
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PENDING_SIG ;
 int WRITE_ONCE (int ,int ) ;

__attribute__((used)) static inline void set_comp_value(u64 *comp)
{
 WRITE_ONCE(*comp, PENDING_SIG);
}

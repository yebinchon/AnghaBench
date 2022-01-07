
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_cesa_engine {int int_mask; } ;



__attribute__((used)) static inline u32 mv_cesa_get_int_mask(struct mv_cesa_engine *engine)
{
 return engine->int_mask;
}

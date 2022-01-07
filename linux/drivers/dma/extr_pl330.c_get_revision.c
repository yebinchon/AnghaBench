
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PERIPH_REV_MASK ;
 int PERIPH_REV_SHIFT ;

__attribute__((used)) static inline u32 get_revision(u32 periph_id)
{
 return (periph_id >> PERIPH_REV_SHIFT) & PERIPH_REV_MASK;
}

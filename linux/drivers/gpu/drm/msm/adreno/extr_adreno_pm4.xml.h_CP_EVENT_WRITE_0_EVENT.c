
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum vgt_event_type { ____Placeholder_vgt_event_type } vgt_event_type ;


 int CP_EVENT_WRITE_0_EVENT__MASK ;
 int CP_EVENT_WRITE_0_EVENT__SHIFT ;

__attribute__((used)) static inline uint32_t CP_EVENT_WRITE_0_EVENT(enum vgt_event_type val)
{
 return ((val) << CP_EVENT_WRITE_0_EVENT__SHIFT) & CP_EVENT_WRITE_0_EVENT__MASK;
}

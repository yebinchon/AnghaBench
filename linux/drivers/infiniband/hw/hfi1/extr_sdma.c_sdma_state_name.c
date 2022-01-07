
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sdma_states { ____Placeholder_sdma_states } sdma_states ;


 char const** sdma_state_names ;

__attribute__((used)) static const char *sdma_state_name(enum sdma_states state)
{
 return sdma_state_names[state];
}

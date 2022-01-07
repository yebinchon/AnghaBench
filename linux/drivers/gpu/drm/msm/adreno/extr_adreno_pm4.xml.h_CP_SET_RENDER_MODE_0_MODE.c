
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum render_mode_cmd { ____Placeholder_render_mode_cmd } render_mode_cmd ;


 int CP_SET_RENDER_MODE_0_MODE__MASK ;
 int CP_SET_RENDER_MODE_0_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t CP_SET_RENDER_MODE_0_MODE(enum render_mode_cmd val)
{
 return ((val) << CP_SET_RENDER_MODE_0_MODE__SHIFT) & CP_SET_RENDER_MODE_0_MODE__MASK;
}

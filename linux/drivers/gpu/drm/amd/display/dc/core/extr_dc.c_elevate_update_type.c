
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum surface_update_type { ____Placeholder_surface_update_type } surface_update_type ;



__attribute__((used)) static inline void elevate_update_type(enum surface_update_type *original, enum surface_update_type new)
{
 if (new > *original)
  *original = new;
}

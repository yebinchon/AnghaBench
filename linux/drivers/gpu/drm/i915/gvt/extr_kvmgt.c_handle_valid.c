
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool handle_valid(unsigned long handle)
{
 return !!(handle & ~0xff);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SYSTEM_RUNNING ;
 scalar_t__ irqs_disabled () ;
 scalar_t__ system_state ;

__attribute__((used)) static inline bool i2c_in_atomic_xfer_mode(void)
{
 return system_state > SYSTEM_RUNNING && irqs_disabled();
}

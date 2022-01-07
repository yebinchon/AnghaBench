
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int const FINGER_STATE_MASK ;

__attribute__((used)) static inline u8 rmi_f11_parse_finger_state(const u8 *f_state, u8 n_finger)
{
 return (f_state[n_finger / 4] >> (2 * (n_finger % 4))) &
       FINGER_STATE_MASK;
}

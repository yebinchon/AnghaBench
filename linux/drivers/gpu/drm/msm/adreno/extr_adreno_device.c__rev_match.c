
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ANY_ID ;

__attribute__((used)) static inline bool _rev_match(uint8_t entry, uint8_t id)
{
 return (entry == ANY_ID) || (entry == id);
}

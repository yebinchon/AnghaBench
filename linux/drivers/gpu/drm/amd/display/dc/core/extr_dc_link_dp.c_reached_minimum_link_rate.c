
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_link_rate { ____Placeholder_dc_link_rate } dc_link_rate ;


 int LINK_RATE_LOW ;

__attribute__((used)) static inline bool reached_minimum_link_rate(enum dc_link_rate link_rate)
{
 return link_rate <= LINK_RATE_LOW;
}

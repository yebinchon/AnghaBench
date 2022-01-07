
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline uint16_t roccat_common2_feature_report(uint8_t report_id)
{
 return 0x300 | report_id;
}

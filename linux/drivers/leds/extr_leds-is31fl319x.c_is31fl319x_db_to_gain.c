
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IS31FL319X_AUDIO_GAIN_DB_STEP ;

__attribute__((used)) static inline int is31fl319x_db_to_gain(u32 dezibel)
{
 return dezibel / IS31FL319X_AUDIO_GAIN_DB_STEP;
}

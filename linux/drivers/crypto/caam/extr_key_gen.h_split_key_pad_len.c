
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ALIGN (int ,int) ;
 int split_key_len (int ) ;

__attribute__((used)) static inline u32 split_key_pad_len(u32 hash)
{
 return ALIGN(split_key_len(hash), 16);
}

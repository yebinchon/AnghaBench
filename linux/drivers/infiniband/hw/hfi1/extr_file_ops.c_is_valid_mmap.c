
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ HFI1_MMAP_MAGIC ;
 scalar_t__ HFI1_MMAP_TOKEN_GET (int ,int ) ;
 int MAGIC ;

__attribute__((used)) static inline int is_valid_mmap(u64 token)
{
 return (HFI1_MMAP_TOKEN_GET(MAGIC, token) == HFI1_MMAP_MAGIC);
}

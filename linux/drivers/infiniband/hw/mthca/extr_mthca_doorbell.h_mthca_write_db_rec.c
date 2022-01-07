
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int wmb () ;

__attribute__((used)) static inline void mthca_write_db_rec(__be32 val[2], __be32 *db)
{
 db[0] = val[0];
 wmb();
 db[1] = val[1];
}

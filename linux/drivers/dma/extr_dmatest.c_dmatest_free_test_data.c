
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_data {int cnt; } ;


 int __dmatest_free_test_data (struct dmatest_data*,int ) ;

__attribute__((used)) static void dmatest_free_test_data(struct dmatest_data *d)
{
 __dmatest_free_test_data(d, d->cnt);
}

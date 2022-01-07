
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int dummy; } ;


 int BIT (int ) ;
 int GO_SHIFT ;
 int REG_GOPROC ;
 int RESULTS_DUMP_SHIFT ;
 int qce_write (struct qce_device*,int ,int) ;

__attribute__((used)) static inline void qce_crypto_go(struct qce_device *qce)
{
 qce_write(qce, REG_GOPROC, BIT(GO_SHIFT) | BIT(RESULTS_DUMP_SHIFT));
}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw.h_orq_get_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw.h_orq_get_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_sqe = type { i32 }
%struct.siw_qp = type { i64, %struct.TYPE_2__, %struct.siw_sqe* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.siw_sqe* (%struct.siw_qp*)* @orq_get_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.siw_sqe* @orq_get_tail(%struct.siw_qp* %0) #0 {
  %2 = alloca %struct.siw_qp*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %2, align 8
  %3 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %4 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %3, i32 0, i32 2
  %5 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %6 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %7 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %10 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = urem i64 %8, %12
  %14 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %5, i64 %13
  ret %struct.siw_sqe* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

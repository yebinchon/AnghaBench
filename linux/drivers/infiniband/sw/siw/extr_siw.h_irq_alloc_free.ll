; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw.h_irq_alloc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw.h_irq_alloc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_sqe = type { i32 }
%struct.siw_qp = type { i64, %struct.TYPE_2__, %struct.siw_sqe* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.siw_sqe* (%struct.siw_qp*)* @irq_alloc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.siw_sqe* @irq_alloc_free(%struct.siw_qp* %0) #0 {
  %2 = alloca %struct.siw_sqe*, align 8
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_sqe*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  %5 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %6 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %5, i32 0, i32 2
  %7 = load %struct.siw_sqe*, %struct.siw_sqe** %6, align 8
  %8 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %9 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %12 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = urem i64 %10, %14
  %16 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %7, i64 %15
  store %struct.siw_sqe* %16, %struct.siw_sqe** %4, align 8
  %17 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %18 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @READ_ONCE(i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %24 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  store %struct.siw_sqe* %27, %struct.siw_sqe** %2, align 8
  br label %29

28:                                               ; preds = %1
  store %struct.siw_sqe* null, %struct.siw_sqe** %2, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.siw_sqe*, %struct.siw_sqe** %2, align 8
  ret %struct.siw_sqe* %30
}

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

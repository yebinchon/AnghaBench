; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_sq_consume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_sq_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_wq*)* @t4_sq_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_sq_consume(%struct.t4_wq* %0) #0 {
  %2 = alloca %struct.t4_wq*, align 8
  store %struct.t4_wq* %0, %struct.t4_wq** %2, align 8
  %3 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %4 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %8 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %6, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %14 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 -1, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %18 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %23 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %28 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %34 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

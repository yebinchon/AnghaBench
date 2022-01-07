; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_srq_consume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_srq_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_srq = type { i64, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_srq*)* @t4_srq_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_srq_consume(%struct.t4_srq* %0) #0 {
  %2 = alloca %struct.t4_srq*, align 8
  store %struct.t4_srq* %0, %struct.t4_srq** %2, align 8
  %3 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %4 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8
  %7 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %8 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %12 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %17 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %20 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %23 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %26 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %21, i64* %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

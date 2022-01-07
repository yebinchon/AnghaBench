; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_srq_consume_ooo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_srq_consume_ooo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_srq = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_srq*)* @t4_srq_consume_ooo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_srq_consume_ooo(%struct.t4_srq* %0) #0 {
  %2 = alloca %struct.t4_srq*, align 8
  store %struct.t4_srq* %0, %struct.t4_srq** %2, align 8
  %3 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %4 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, 1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %8 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %11 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %16 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %19 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %22 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %25 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %20, i64* %29, align 8
  %30 = load %struct.t4_srq*, %struct.t4_srq** %2, align 8
  %31 = getelementptr inbounds %struct.t4_srq, %struct.t4_srq* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

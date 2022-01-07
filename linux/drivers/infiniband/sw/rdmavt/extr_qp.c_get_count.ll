; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_get_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_rq = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rvt_rq*, i64, i64)* @get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_count(%struct.rvt_rq* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rvt_rq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rvt_rq* %0, %struct.rvt_rq** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.rvt_rq*, %struct.rvt_rq** %4, align 8
  %11 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.rvt_rq*, %struct.rvt_rq** %4, align 8
  %21 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %7, align 8
  br label %31

27:                                               ; preds = %15
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %29, %28
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i64, i64* %7, align 8
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

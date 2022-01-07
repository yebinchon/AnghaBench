; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*)* @qp_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_idle(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %3 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %4 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %7 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %10
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %31 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br label %34

34:                                               ; preds = %26, %18, %10, %1
  %35 = phi i1 [ false, %18 ], [ false, %10 ], [ false, %1 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

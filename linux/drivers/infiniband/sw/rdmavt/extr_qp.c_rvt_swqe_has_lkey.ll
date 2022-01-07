; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_swqe_has_lkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_swqe_has_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_swqe = type { %struct.rvt_sge*, %struct.TYPE_2__ }
%struct.rvt_sge = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_swqe*, i32)* @rvt_swqe_has_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_swqe_has_lkey(%struct.rvt_swqe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_swqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvt_sge*, align 8
  store %struct.rvt_swqe* %0, %struct.rvt_swqe** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %11 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %8
  %16 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %17 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %16, i32 0, i32 0
  %18 = load %struct.rvt_sge*, %struct.rvt_sge** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %18, i64 %20
  store %struct.rvt_sge* %21, %struct.rvt_sge** %7, align 8
  %22 = load %struct.rvt_sge*, %struct.rvt_sge** %7, align 8
  %23 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @rvt_mr_has_lkey(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %34

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %8

33:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @rvt_mr_has_lkey(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

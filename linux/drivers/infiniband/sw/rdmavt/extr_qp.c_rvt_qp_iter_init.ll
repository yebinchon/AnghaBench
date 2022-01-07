; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp_iter = type { i32, void (%struct.rvt_qp*, i32)*, i32, %struct.rvt_dev_info* }
%struct.rvt_qp = type opaque
%struct.rvt_dev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rvt_qp.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rvt_qp_iter* @rvt_qp_iter_init(%struct.rvt_dev_info* %0, i32 %1, void (%struct.rvt_qp.0*, i32)* %2) #0 {
  %4 = alloca %struct.rvt_qp_iter*, align 8
  %5 = alloca %struct.rvt_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.rvt_qp.0*, i32)*, align 8
  %8 = alloca %struct.rvt_qp_iter*, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (%struct.rvt_qp.0*, i32)* %2, void (%struct.rvt_qp.0*, i32)** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rvt_qp_iter* @kzalloc(i32 32, i32 %9)
  store %struct.rvt_qp_iter* %10, %struct.rvt_qp_iter** %8, align 8
  %11 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %8, align 8
  %12 = icmp ne %struct.rvt_qp_iter* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.rvt_qp_iter* null, %struct.rvt_qp_iter** %4, align 8
  br label %33

14:                                               ; preds = %3
  %15 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %5, align 8
  %16 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %8, align 8
  %17 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %16, i32 0, i32 3
  store %struct.rvt_dev_info* %15, %struct.rvt_dev_info** %17, align 8
  %18 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %5, align 8
  %19 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  %23 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %8, align 8
  %27 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load void (%struct.rvt_qp.0*, i32)*, void (%struct.rvt_qp.0*, i32)** %7, align 8
  %29 = bitcast void (%struct.rvt_qp.0*, i32)* %28 to void (%struct.rvt_qp*, i32)*
  %30 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %8, align 8
  %31 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %30, i32 0, i32 1
  store void (%struct.rvt_qp*, i32)* %29, void (%struct.rvt_qp*, i32)** %31, align 8
  %32 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %8, align 8
  store %struct.rvt_qp_iter* %32, %struct.rvt_qp_iter** %4, align 8
  br label %33

33:                                               ; preds = %14, %13
  %34 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %4, align 8
  ret %struct.rvt_qp_iter* %34
}

declare dso_local %struct.rvt_qp_iter* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

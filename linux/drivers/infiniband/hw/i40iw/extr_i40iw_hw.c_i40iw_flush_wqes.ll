; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_flush_wqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_flush_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_qp = type { %struct.i40iw_sc_qp }
%struct.i40iw_sc_qp = type { i32, i64 }
%struct.i40iw_qp_flush_info = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_flush_wqes(%struct.i40iw_device* %0, %struct.i40iw_qp* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_qp*, align 8
  %5 = alloca %struct.i40iw_qp_flush_info, align 4
  %6 = alloca %struct.i40iw_qp_flush_info*, align 8
  %7 = alloca %struct.i40iw_sc_qp*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store %struct.i40iw_qp* %1, %struct.i40iw_qp** %4, align 8
  store %struct.i40iw_qp_flush_info* %5, %struct.i40iw_qp_flush_info** %6, align 8
  %8 = load %struct.i40iw_qp*, %struct.i40iw_qp** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %8, i32 0, i32 0
  store %struct.i40iw_sc_qp* %9, %struct.i40iw_sc_qp** %7, align 8
  %10 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %6, align 8
  %11 = call i32 @memset(%struct.i40iw_qp_flush_info* %10, i32 0, i32 24)
  %12 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %5, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %5, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %6, align 8
  %20 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %6, align 8
  %21 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %20, i32 0, i32 5
  %22 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %6, align 8
  %23 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %22, i32 0, i32 4
  %24 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @i40iw_set_flush_info(%struct.i40iw_qp_flush_info* %19, i32* %21, i32* %23, i32 %26)
  %28 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %6, align 8
  %29 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %6, align 8
  %30 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %29, i32 0, i32 3
  %31 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %6, align 8
  %32 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %31, i32 0, i32 2
  %33 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %34 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @i40iw_set_flush_info(%struct.i40iw_qp_flush_info* %28, i32* %30, i32* %32, i32 %35)
  br label %37

37:                                               ; preds = %18, %2
  %38 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %39 = load %struct.i40iw_qp*, %struct.i40iw_qp** %4, align 8
  %40 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %39, i32 0, i32 0
  %41 = call i32 @i40iw_hw_flush_wqes(%struct.i40iw_device* %38, %struct.i40iw_sc_qp* %40, %struct.i40iw_qp_flush_info* %5, i32 1)
  ret void
}

declare dso_local i32 @memset(%struct.i40iw_qp_flush_info*, i32, i32) #1

declare dso_local i32 @i40iw_set_flush_info(%struct.i40iw_qp_flush_info*, i32*, i32*, i32) #1

declare dso_local i32 @i40iw_hw_flush_wqes(%struct.i40iw_device*, %struct.i40iw_sc_qp*, %struct.i40iw_qp_flush_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

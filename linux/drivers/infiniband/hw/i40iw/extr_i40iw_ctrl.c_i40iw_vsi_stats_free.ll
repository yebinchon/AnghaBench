; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_vsi_stats_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_vsi_stats_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_vsi = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@I40IW_MAX_STATS_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_vsi_stats_free(%struct.i40iw_sc_vsi* %0) #0 {
  %2 = alloca %struct.i40iw_sc_vsi*, align 8
  %3 = alloca i64, align 8
  store %struct.i40iw_sc_vsi* %0, %struct.i40iw_sc_vsi** %2, align 8
  %4 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @I40IW_MAX_STATS_COUNT, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %15, %11, %1
  %24 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %2, align 8
  %25 = call i32 @i40iw_hw_stats_stop_timer(%struct.i40iw_sc_vsi* %24)
  ret void
}

declare dso_local i32 @i40iw_hw_stats_stop_timer(%struct.i40iw_sc_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

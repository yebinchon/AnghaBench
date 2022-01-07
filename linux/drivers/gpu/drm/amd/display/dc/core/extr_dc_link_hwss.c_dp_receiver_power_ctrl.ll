; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_receiver_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_receiver_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i64 }

@DP_POWER_STATE_D0 = common dso_local global i32 0, align 4
@DP_POWER_STATE_D3 = common dso_local global i32 0, align 4
@DP_SET_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_receiver_power_ctrl(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @DP_POWER_STATE_D0, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DP_POWER_STATE_D3, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %5, align 4
  %14 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %15 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %21 = load i32, i32* @DP_SET_POWER, align 4
  %22 = call i32 @core_link_write_dpcd(%struct.dc_link* %20, i32 %21, i32* %5, i32 4)
  br label %23

23:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @core_link_write_dpcd(%struct.dc_link*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

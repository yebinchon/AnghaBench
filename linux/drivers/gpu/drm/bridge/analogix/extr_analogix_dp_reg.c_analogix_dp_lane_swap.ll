; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_lane_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_lane_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64 }

@LANE3_MAP_LOGIC_LANE_0 = common dso_local global i32 0, align 4
@LANE2_MAP_LOGIC_LANE_1 = common dso_local global i32 0, align 4
@LANE1_MAP_LOGIC_LANE_2 = common dso_local global i32 0, align 4
@LANE0_MAP_LOGIC_LANE_3 = common dso_local global i32 0, align 4
@LANE3_MAP_LOGIC_LANE_3 = common dso_local global i32 0, align 4
@LANE2_MAP_LOGIC_LANE_2 = common dso_local global i32 0, align 4
@LANE1_MAP_LOGIC_LANE_1 = common dso_local global i32 0, align 4
@LANE0_MAP_LOGIC_LANE_0 = common dso_local global i32 0, align 4
@ANALOGIX_DP_LANE_MAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_lane_swap(%struct.analogix_dp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* @LANE3_MAP_LOGIC_LANE_0, align 4
  %10 = load i32, i32* @LANE2_MAP_LOGIC_LANE_1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LANE1_MAP_LOGIC_LANE_2, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LANE0_MAP_LOGIC_LANE_3, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @LANE3_MAP_LOGIC_LANE_3, align 4
  %18 = load i32, i32* @LANE2_MAP_LOGIC_LANE_2, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LANE1_MAP_LOGIC_LANE_1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LANE0_MAP_LOGIC_LANE_0, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %27 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ANALOGIX_DP_LANE_MAP, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_link_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_link_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_link = type { i32, i32, i32, i32 }

@DP_DPCD_REV = common dso_local global i32 0, align 4
@DP_MAX_LANE_COUNT_MASK = common dso_local global i32 0, align 4
@DP_ENHANCED_FRAME_CAP = common dso_local global i32 0, align 4
@DP_LINK_CAP_ENHANCED_FRAMING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_link_probe(%struct.drm_dp_aux* %0, %struct.drm_dp_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.drm_dp_link*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store %struct.drm_dp_link* %1, %struct.drm_dp_link** %5, align 8
  %8 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %9 = call i32 @memset(%struct.drm_dp_link* %8, i32 0, i32 16)
  %10 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %11 = load i32, i32* @DP_DPCD_REV, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %13 = call i32 @drm_dp_dpcd_read(%struct.drm_dp_aux* %10, i32 %11, i32* %12, i32 12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %22 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drm_dp_bw_code_to_link_rate(i32 %24)
  %26 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %27 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DP_MAX_LANE_COUNT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %33 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DP_ENHANCED_FRAME_CAP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %18
  %40 = load i32, i32* @DP_LINK_CAP_ENHANCED_FRAMING, align 4
  %41 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %42 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %18
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.drm_dp_link*, i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_read(%struct.drm_dp_aux*, i32, i32*, i32) #1

declare dso_local i32 @drm_dp_bw_code_to_link_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

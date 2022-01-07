; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_link_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_link_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_link = type { i32, i32, i32 }

@DP_LINK_CAP_ENHANCED_FRAMING = common dso_local global i32 0, align 4
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@DP_LINK_BW_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_link_configure(%struct.drm_dp_aux* %0, %struct.drm_dp_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.drm_dp_link*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store %struct.drm_dp_link* %1, %struct.drm_dp_link** %5, align 8
  %8 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %9 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @drm_dp_link_rate_to_bw_code(i32 %10)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %14 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %18 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DP_LINK_CAP_ENHANCED_FRAMING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %30 = load i32, i32* @DP_LINK_BW_SET, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %32 = call i32 @drm_dp_dpcd_write(%struct.drm_dp_aux* %29, i32 %30, i32* %31, i32 8)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @drm_dp_link_rate_to_bw_code(i32) #1

declare dso_local i32 @drm_dp_dpcd_write(%struct.drm_dp_aux*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

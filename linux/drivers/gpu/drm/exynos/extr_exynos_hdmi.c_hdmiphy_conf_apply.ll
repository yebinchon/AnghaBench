; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmiphy_conf_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmiphy_conf_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i32, %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to find hdmiphy conf\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to configure hdmiphy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*)* @hdmiphy_conf_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmiphy_conf_apply(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  %6 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %3, align 8
  %13 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = call i32 @hdmi_find_phy_conf(%struct.hdmi_context* %13, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %23 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @DRM_DEV_ERROR(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %62

26:                                               ; preds = %1
  %27 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %28 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %5, align 8
  %38 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %39 = call i32 @hdmi_clk_set_parents(%struct.hdmi_context* %38, i32 0)
  %40 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %41 = call i32 @hdmiphy_conf_reset(%struct.hdmi_context* %40)
  %42 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %43 = call i32 @hdmiphy_enable_mode_set(%struct.hdmi_context* %42, i32 1)
  %44 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @hdmiphy_reg_write_buf(%struct.hdmi_context* %44, i32 0, i32* %45, i32 32)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %26
  %50 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %51 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DRM_DEV_ERROR(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %62

54:                                               ; preds = %26
  %55 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %56 = call i32 @hdmiphy_enable_mode_set(%struct.hdmi_context* %55, i32 0)
  %57 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %58 = call i32 @hdmi_clk_set_parents(%struct.hdmi_context* %57, i32 1)
  %59 = call i32 @usleep_range(i32 10000, i32 12000)
  %60 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %61 = call i32 @hdmiphy_wait_for_pll(%struct.hdmi_context* %60)
  br label %62

62:                                               ; preds = %54, %49, %21
  ret void
}

declare dso_local i32 @hdmi_find_phy_conf(%struct.hdmi_context*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @hdmi_clk_set_parents(%struct.hdmi_context*, i32) #1

declare dso_local i32 @hdmiphy_conf_reset(%struct.hdmi_context*) #1

declare dso_local i32 @hdmiphy_enable_mode_set(%struct.hdmi_context*, i32) #1

declare dso_local i32 @hdmiphy_reg_write_buf(%struct.hdmi_context*, i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hdmiphy_wait_for_pll(%struct.hdmi_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

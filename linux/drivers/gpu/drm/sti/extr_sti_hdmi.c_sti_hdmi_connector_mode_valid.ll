; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sti_hdmi_connector = type { %struct.sti_hdmi* }
%struct.sti_hdmi = type { i32 }

@CLK_TOLERANCE_HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"target rate = %d => available rate = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"hdmi pixclk=%d not supported\0A\00", align 1
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @sti_hdmi_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hdmi_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sti_hdmi_connector*, align 8
  %11 = alloca %struct.sti_hdmi*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 1000
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CLK_TOLERANCE_HZ, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CLK_TOLERANCE_HZ, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = call %struct.sti_hdmi_connector* @to_sti_hdmi_connector(%struct.drm_connector* %22)
  store %struct.sti_hdmi_connector* %23, %struct.sti_hdmi_connector** %10, align 8
  %24 = load %struct.sti_hdmi_connector*, %struct.sti_hdmi_connector** %10, align 8
  %25 = getelementptr inbounds %struct.sti_hdmi_connector, %struct.sti_hdmi_connector* %24, i32 0, i32 0
  %26 = load %struct.sti_hdmi*, %struct.sti_hdmi** %25, align 8
  store %struct.sti_hdmi* %26, %struct.sti_hdmi** %11, align 8
  %27 = load %struct.sti_hdmi*, %struct.sti_hdmi** %11, align 8
  %28 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @clk_round_rate(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %2
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @MODE_BAD, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @MODE_OK, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.sti_hdmi_connector* @to_sti_hdmi_connector(%struct.drm_connector*) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

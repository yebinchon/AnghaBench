; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sti_hda_connector = type { %struct.sti_hda* }
%struct.sti_hda = type { i32 }

@CLK_TOLERANCE_HZ = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"target rate = %d => available rate = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"hda pixclk=%d not supported\0A\00", align 1
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @sti_hda_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hda_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sti_hda_connector*, align 8
  %12 = alloca %struct.sti_hda*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 1000
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CLK_TOLERANCE_HZ, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CLK_TOLERANCE_HZ, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %24 = call %struct.sti_hda_connector* @to_sti_hda_connector(%struct.drm_connector* %23)
  store %struct.sti_hda_connector* %24, %struct.sti_hda_connector** %11, align 8
  %25 = load %struct.sti_hda_connector*, %struct.sti_hda_connector** %11, align 8
  %26 = getelementptr inbounds %struct.sti_hda_connector, %struct.sti_hda_connector* %25, i32 0, i32 0
  %27 = load %struct.sti_hda*, %struct.sti_hda** %26, align 8
  store %struct.sti_hda* %27, %struct.sti_hda** %12, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hda_get_mode_idx(i32 %30, i32* %10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @MODE_BAD, align 4
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.sti_hda*, %struct.sti_hda** %12, align 8
  %37 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @clk_round_rate(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %35
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @MODE_BAD, align 4
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* @MODE_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %51, %33
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.sti_hda_connector* @to_sti_hda_connector(%struct.drm_connector*) #1

declare dso_local i32 @hda_get_mode_idx(i32, i32*) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

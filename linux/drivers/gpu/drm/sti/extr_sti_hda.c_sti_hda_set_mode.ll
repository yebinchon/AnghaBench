; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.drm_bridge = type { %struct.sti_hda* }
%struct.sti_hda = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Undefined mode\0A\00", align 1
@hda_supported_modes = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Cannot set rate (%dHz) for hda_hddac clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Cannot set rate (%dHz) for hda_pix clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @sti_hda_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hda_set_mode(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sti_hda*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %11 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %12 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %11, i32 0, i32 0
  %13 = load %struct.sti_hda*, %struct.sti_hda** %12, align 8
  store %struct.sti_hda* %13, %struct.sti_hda** %7, align 8
  %14 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sti_hda*, %struct.sti_hda** %7, align 8
  %16 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %15, i32 0, i32 2
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %18 = call i32 @memcpy(i32* %16, %struct.drm_display_mode* %17, i32 4)
  %19 = load %struct.sti_hda*, %struct.sti_hda** %7, align 8
  %20 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hda_get_mode_idx(i32 %21, i64* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %74

26:                                               ; preds = %3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hda_supported_modes, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 129, label %38
  ]

32:                                               ; preds = %26
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* %9, align 4
  br label %46

38:                                               ; preds = %26
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = mul nsw i32 %42, 4
  store i32 %43, i32* %9, align 4
  br label %46

44:                                               ; preds = %26
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %74

46:                                               ; preds = %38, %32
  %47 = load %struct.sti_hda*, %struct.sti_hda** %7, align 8
  %48 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @clk_set_rate(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load %struct.sti_hda*, %struct.sti_hda** %7, align 8
  %59 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 1000
  %65 = call i32 @clk_set_rate(i32 %60, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 1000
  %73 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %24, %44, %68, %57
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @hda_get_mode_idx(i32, i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

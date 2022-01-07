; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c__dpu_format_get_media_color_ubwc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c__dpu_format_get_media_color_ubwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_media_color_map = type { i64, i32, i32, i32 }
%struct.dpu_format = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map = internal constant [5 x %struct.dpu_media_color_map] [%struct.dpu_media_color_map { i64 131, i32 133, i32 0, i32 0 }, %struct.dpu_media_color_map { i64 128, i32 133, i32 0, i32 0 }, %struct.dpu_media_color_map { i64 132, i32 134, i32 0, i32 0 }, %struct.dpu_media_color_map { i64 129, i32 134, i32 0, i32 0 }, %struct.dpu_media_color_map { i64 130, i32 135, i32 0, i32 0 }], align 16
@DRM_FORMAT_NV12 = common dso_local global i64 0, align 8
@COLOR_FMT_NV12_BPP10_UBWC = common dso_local global i32 0, align 4
@COLOR_FMT_P010_UBWC = common dso_local global i32 0, align 4
@COLOR_FMT_NV12_UBWC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_format*)* @_dpu_format_get_media_color_ubwc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_format_get_media_color_ubwc(%struct.dpu_format* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_format*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dpu_format* %0, %struct.dpu_format** %3, align 8
  store i32 -1, i32* %4, align 4
  %6 = load %struct.dpu_format*, %struct.dpu_format** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.dpu_format*, %struct.dpu_format** %3, align 8
  %14 = call i64 @DPU_FORMAT_IS_DX(%struct.dpu_format* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.dpu_format*, %struct.dpu_format** %3, align 8
  %18 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @COLOR_FMT_NV12_BPP10_UBWC, align 4
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @COLOR_FMT_P010_UBWC, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %28

26:                                               ; preds = %12
  %27 = load i32, i32* @COLOR_FMT_NV12_UBWC, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ARRAY_SIZE(%struct.dpu_media_color_map* getelementptr inbounds ([5 x %struct.dpu_media_color_map], [5 x %struct.dpu_media_color_map]* @_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map, i64 0, i64 0))
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.dpu_format*, %struct.dpu_format** %3, align 8
  %37 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x %struct.dpu_media_color_map], [5 x %struct.dpu_media_color_map]* @_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.dpu_media_color_map, %struct.dpu_media_color_map* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x %struct.dpu_media_color_map], [5 x %struct.dpu_media_color_map]* @_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.dpu_media_color_map, %struct.dpu_media_color_map* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %31

56:                                               ; preds = %46, %31
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %28
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @DPU_FORMAT_IS_DX(%struct.dpu_format*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dpu_media_color_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

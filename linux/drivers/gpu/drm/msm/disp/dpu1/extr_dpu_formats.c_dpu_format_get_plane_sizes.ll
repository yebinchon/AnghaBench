; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c_dpu_format_get_plane_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c_dpu_format_get_plane_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_format = type { i32 }
%struct.dpu_hw_fmt_layout = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DPU_MAX_IMG_WIDTH = common dso_local global i64 0, align 8
@DPU_MAX_IMG_HEIGHT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"image dimensions outside max range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_format*, i64, i64, %struct.dpu_hw_fmt_layout*, i64*)* @dpu_format_get_plane_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_format_get_plane_sizes(%struct.dpu_format* %0, i64 %1, i64 %2, %struct.dpu_hw_fmt_layout* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_format*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dpu_hw_fmt_layout*, align 8
  %11 = alloca i64*, align 8
  store %struct.dpu_format* %0, %struct.dpu_format** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.dpu_hw_fmt_layout* %3, %struct.dpu_hw_fmt_layout** %10, align 8
  store i64* %4, i64** %11, align 8
  %12 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %10, align 8
  %13 = icmp ne %struct.dpu_hw_fmt_layout* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %16 = icmp ne %struct.dpu_format* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %5
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %54

21:                                               ; preds = %14
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @DPU_MAX_IMG_WIDTH, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @DPU_MAX_IMG_HEIGHT, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ERANGE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %54

33:                                               ; preds = %25
  %34 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %35 = call i64 @DPU_FORMAT_IS_UBWC(%struct.dpu_format* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %39 = call i64 @DPU_FORMAT_IS_TILE(%struct.dpu_format* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %33
  %42 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %10, align 8
  %46 = call i32 @_dpu_format_get_plane_sizes_ubwc(%struct.dpu_format* %42, i64 %43, i64 %44, %struct.dpu_hw_fmt_layout* %45)
  store i32 %46, i32* %6, align 4
  br label %54

47:                                               ; preds = %37
  %48 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %10, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = call i32 @_dpu_format_get_plane_sizes_linear(%struct.dpu_format* %48, i64 %49, i64 %50, %struct.dpu_hw_fmt_layout* %51, i64* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %47, %41, %29, %17
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @DPU_FORMAT_IS_UBWC(%struct.dpu_format*) #1

declare dso_local i64 @DPU_FORMAT_IS_TILE(%struct.dpu_format*) #1

declare dso_local i32 @_dpu_format_get_plane_sizes_ubwc(%struct.dpu_format*, i64, i64, %struct.dpu_hw_fmt_layout*) #1

declare dso_local i32 @_dpu_format_get_plane_sizes_linear(%struct.dpu_format*, i64, i64, %struct.dpu_hw_fmt_layout*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_drm_format_to_input_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_drm_format_to_input_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_format_info = type { i32 }

@SUN4I_FRONTEND_INPUT_FMT_DATA_PS_BGRX = common dso_local global i64 0, align 8
@SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UV = common dso_local global i64 0, align 8
@SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VU = common dso_local global i64 0, align 8
@SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UYVY = common dso_local global i64 0, align 8
@SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VYUY = common dso_local global i64 0, align 8
@SUN4I_FRONTEND_INPUT_FMT_DATA_PS_XRGB = common dso_local global i64 0, align 8
@SUN4I_FRONTEND_INPUT_FMT_DATA_PS_YUYV = common dso_local global i64 0, align 8
@SUN4I_FRONTEND_INPUT_FMT_DATA_PS_YVYU = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_format_info*, i64*)* @sun4i_frontend_drm_format_to_input_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_frontend_drm_format_to_input_sequence(%struct.drm_format_info* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_format_info*, align 8
  %5 = alloca i64*, align 8
  store %struct.drm_format_info* %0, %struct.drm_format_info** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %7 = call i64 @drm_format_info_is_yuv_planar(%struct.drm_format_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %3, align 4
  br label %48

11:                                               ; preds = %2
  %12 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %13 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %45 [
    i32 137, label %15
    i32 136, label %18
    i32 135, label %21
    i32 134, label %24
    i32 133, label %27
    i32 132, label %30
    i32 131, label %33
    i32 130, label %36
    i32 129, label %39
    i32 128, label %42
  ]

15:                                               ; preds = %11
  %16 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_BGRX, align 8
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  store i32 0, i32* %3, align 4
  br label %48

18:                                               ; preds = %11
  %19 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UV, align 8
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  store i32 0, i32* %3, align 4
  br label %48

21:                                               ; preds = %11
  %22 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UV, align 8
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %48

24:                                               ; preds = %11
  %25 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VU, align 8
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %48

27:                                               ; preds = %11
  %28 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VU, align 8
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %3, align 4
  br label %48

30:                                               ; preds = %11
  %31 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UYVY, align 8
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %48

33:                                               ; preds = %11
  %34 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VYUY, align 8
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %48

36:                                               ; preds = %11
  %37 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_XRGB, align 8
  %38 = load i64*, i64** %5, align 8
  store i64 %37, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %48

39:                                               ; preds = %11
  %40 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_YUYV, align 8
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %48

42:                                               ; preds = %11
  %43 = load i64, i64* @SUN4I_FRONTEND_INPUT_FMT_DATA_PS_YVYU, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %11
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %9
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @drm_format_info_is_yuv_planar(%struct.drm_format_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

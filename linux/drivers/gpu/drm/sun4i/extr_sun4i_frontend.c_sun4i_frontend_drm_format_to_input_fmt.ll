; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_drm_format_to_input_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_drm_format_to_input_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_format_info = type { i32 }

@SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_RGB = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV411 = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV420 = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV422 = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV444 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_format_info*, i32*)* @sun4i_frontend_drm_format_to_input_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_frontend_drm_format_to_input_fmt(%struct.drm_format_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_format_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.drm_format_info* %0, %struct.drm_format_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %7 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_RGB, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %15 = call i64 @drm_format_info_is_yuv_sampling_411(%struct.drm_format_info* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV411, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %47

20:                                               ; preds = %13
  %21 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %22 = call i64 @drm_format_info_is_yuv_sampling_420(%struct.drm_format_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV420, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %46

27:                                               ; preds = %20
  %28 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %29 = call i64 @drm_format_info_is_yuv_sampling_422(%struct.drm_format_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV422, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %45

34:                                               ; preds = %27
  %35 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %36 = call i64 @drm_format_info_is_yuv_sampling_444(%struct.drm_format_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV444, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %24
  br label %47

47:                                               ; preds = %46, %17
  br label %48

48:                                               ; preds = %47, %10
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @drm_format_info_is_yuv_sampling_411(%struct.drm_format_info*) #1

declare dso_local i64 @drm_format_info_is_yuv_sampling_420(%struct.drm_format_info*) #1

declare dso_local i64 @drm_format_info_is_yuv_sampling_422(%struct.drm_format_info*) #1

declare dso_local i64 @drm_format_info_is_yuv_sampling_444(%struct.drm_format_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

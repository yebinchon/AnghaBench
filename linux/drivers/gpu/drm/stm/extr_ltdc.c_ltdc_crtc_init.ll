; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ltdc_device* }
%struct.ltdc_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_plane = type { i32 }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Can not create primary plane\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ltdc_crtc_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can not initialize CRTC\0A\00", align 1
@ltdc_crtc_helper_funcs = common dso_local global i32 0, align 4
@CLUT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"CRTC:%d created\0A\00", align 1
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Can not create overlay plane %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_crtc*)* @ltdc_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltdc_crtc_init(%struct.drm_device* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.ltdc_device*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.ltdc_device*, %struct.ltdc_device** %12, align 8
  store %struct.ltdc_device* %13, %struct.ltdc_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %16 = call %struct.drm_plane* @ltdc_plane_create(%struct.drm_device* %14, i32 %15)
  store %struct.drm_plane* %16, %struct.drm_plane** %7, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %18 = icmp ne %struct.drm_plane* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %26 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %27 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %24, %struct.drm_crtc* %25, %struct.drm_plane* %26, i32* null, i32* @ltdc_crtc_funcs, i32* null)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %69

32:                                               ; preds = %23
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %34 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %33, i32* @ltdc_crtc_helper_funcs)
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %36 = load i32, i32* @CLUT_SIZE, align 4
  %37 = call i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc* %35, i32 %36)
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %39 = load i32, i32* @CLUT_SIZE, align 4
  %40 = call i32 @drm_crtc_enable_color_mgmt(%struct.drm_crtc* %38, i32 0, i32 0, i32 %39)
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %65, %32
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %49 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %56 = call %struct.drm_plane* @ltdc_plane_create(%struct.drm_device* %54, i32 %55)
  store %struct.drm_plane* %56, %struct.drm_plane** %8, align 8
  %57 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %58 = icmp ne %struct.drm_plane* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %69

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %46

68:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %73

69:                                               ; preds = %59, %30
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = call i32 @ltdc_plane_destroy_all(%struct.drm_device* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %68, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.drm_plane* @ltdc_plane_create(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_crtc_enable_color_mgmt(%struct.drm_crtc*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @ltdc_plane_destroy_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

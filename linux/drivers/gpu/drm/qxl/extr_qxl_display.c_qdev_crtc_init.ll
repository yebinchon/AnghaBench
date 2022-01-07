; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qdev_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qdev_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.qxl_crtc = type { i32, i32 }
%struct.drm_plane = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@qxl_crtc_funcs = common dso_local global i32 0, align 4
@qxl_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @qdev_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdev_crtc_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qxl_crtc*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.qxl_device*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.qxl_device*, %struct.qxl_device** %12, align 8
  store %struct.qxl_device* %13, %struct.qxl_device** %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.qxl_crtc* @kzalloc(i32 8, i32 %14)
  store %struct.qxl_crtc* %15, %struct.qxl_crtc** %6, align 8
  %16 = load %struct.qxl_crtc*, %struct.qxl_crtc** %6, align 8
  %17 = icmp ne %struct.qxl_crtc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %86

21:                                               ; preds = %2
  %22 = load %struct.qxl_device*, %struct.qxl_device** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %26 = call %struct.qxl_crtc* @qxl_create_plane(%struct.qxl_device* %22, i32 %24, i32 %25)
  %27 = bitcast %struct.qxl_crtc* %26 to %struct.drm_plane*
  store %struct.drm_plane* %27, %struct.drm_plane** %7, align 8
  %28 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %29 = bitcast %struct.drm_plane* %28 to %struct.qxl_crtc*
  %30 = call i64 @IS_ERR(%struct.qxl_crtc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %82

35:                                               ; preds = %21
  %36 = load %struct.qxl_device*, %struct.qxl_device** %9, align 8
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %40 = call %struct.qxl_crtc* @qxl_create_plane(%struct.qxl_device* %36, i32 %38, i32 %39)
  %41 = bitcast %struct.qxl_crtc* %40 to %struct.drm_plane*
  store %struct.drm_plane* %41, %struct.drm_plane** %8, align 8
  %42 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %43 = bitcast %struct.drm_plane* %42 to %struct.qxl_crtc*
  %44 = call i64 @IS_ERR(%struct.qxl_crtc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %75

49:                                               ; preds = %35
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = load %struct.qxl_crtc*, %struct.qxl_crtc** %6, align 8
  %52 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %51, i32 0, i32 1
  %53 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %54 = bitcast %struct.drm_plane* %53 to %struct.qxl_crtc*
  %55 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %56 = bitcast %struct.drm_plane* %55 to %struct.qxl_crtc*
  %57 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %50, i32* %52, %struct.qxl_crtc* %54, %struct.qxl_crtc* %56, i32* @qxl_crtc_funcs, i32* null)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.qxl_crtc*, %struct.qxl_crtc** %6, align 8
  %64 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.qxl_crtc*, %struct.qxl_crtc** %6, align 8
  %66 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %65, i32 0, i32 1
  %67 = call i32 @drm_crtc_helper_add(i32* %66, i32* @qxl_crtc_helper_funcs)
  store i32 0, i32* %3, align 4
  br label %86

68:                                               ; preds = %60
  %69 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %70 = bitcast %struct.drm_plane* %69 to %struct.qxl_crtc*
  %71 = call i32 @drm_plane_cleanup(%struct.qxl_crtc* %70)
  %72 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %73 = bitcast %struct.drm_plane* %72 to %struct.qxl_crtc*
  %74 = call i32 @kfree(%struct.qxl_crtc* %73)
  br label %75

75:                                               ; preds = %68, %46
  %76 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %77 = bitcast %struct.drm_plane* %76 to %struct.qxl_crtc*
  %78 = call i32 @drm_plane_cleanup(%struct.qxl_crtc* %77)
  %79 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %80 = bitcast %struct.drm_plane* %79 to %struct.qxl_crtc*
  %81 = call i32 @kfree(%struct.qxl_crtc* %80)
  br label %82

82:                                               ; preds = %75, %32
  %83 = load %struct.qxl_crtc*, %struct.qxl_crtc** %6, align 8
  %84 = call i32 @kfree(%struct.qxl_crtc* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %61, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.qxl_crtc* @kzalloc(i32, i32) #1

declare dso_local %struct.qxl_crtc* @qxl_create_plane(%struct.qxl_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.qxl_crtc*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, i32*, %struct.qxl_crtc*, %struct.qxl_crtc*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_plane_cleanup(%struct.qxl_crtc*) #1

declare dso_local i32 @kfree(%struct.qxl_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

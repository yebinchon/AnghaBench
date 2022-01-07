; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_plane = type { i32 }
%struct.vkms_output = type { i32, i32, i32 }

@vkms_crtc_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to init CRTC\0A\00", align 1
@vkms_crtc_helper_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"vkms_composer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vkms_crtc_init(%struct.drm_device* %0, %struct.drm_crtc* %1, %struct.drm_plane* %2, %struct.drm_plane* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.vkms_output*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %7, align 8
  store %struct.drm_plane* %2, %struct.drm_plane** %8, align 8
  store %struct.drm_plane* %3, %struct.drm_plane** %9, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %13 = call %struct.vkms_output* @drm_crtc_to_vkms_output(%struct.drm_crtc* %12)
  store %struct.vkms_output* %13, %struct.vkms_output** %10, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %18 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %14, %struct.drm_crtc* %15, %struct.drm_plane* %16, %struct.drm_plane* %17, i32* @vkms_crtc_funcs, i32* null)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %26 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %25, i32* @vkms_crtc_helper_funcs)
  %27 = load %struct.vkms_output*, %struct.vkms_output** %10, align 8
  %28 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.vkms_output*, %struct.vkms_output** %10, align 8
  %31 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %34 = load %struct.vkms_output*, %struct.vkms_output** %10, align 8
  %35 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vkms_output*, %struct.vkms_output** %10, align 8
  %37 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %24
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %40, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.vkms_output* @drm_crtc_to_vkms_output(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

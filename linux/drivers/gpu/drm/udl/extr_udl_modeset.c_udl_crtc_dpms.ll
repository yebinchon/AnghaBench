; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.udl_device* }
%struct.udl_device = type { i64 }
%struct.urb = type { i64 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Trying to enable DPMS with no mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @udl_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.udl_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.urb*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.udl_device*, %struct.udl_device** %14, align 8
  store %struct.udl_device* %15, %struct.udl_device** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.urb* @udl_get_urb(%struct.drm_device* %20)
  store %struct.urb* %21, %struct.urb** %9, align 8
  %22 = load %struct.urb*, %struct.urb** %9, align 8
  %23 = icmp ne %struct.urb* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %61

25:                                               ; preds = %19
  %26 = load %struct.urb*, %struct.urb** %9, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @udl_vidreg_lock(i8* %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @udl_set_blank(i8* %32, i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @udl_vidreg_unlock(i8* %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @udl_dummy_render(i8* %37)
  store i8* %38, i8** %8, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = load %struct.urb*, %struct.urb** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.urb*, %struct.urb** %9, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %41 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @udl_submit_urb(%struct.drm_device* %39, %struct.urb* %40, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %61

51:                                               ; preds = %2
  %52 = load %struct.udl_device*, %struct.udl_device** %6, align 8
  %53 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %61

58:                                               ; preds = %51
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %60 = call i32 @udl_crtc_write_mode_to_hw(%struct.drm_crtc* %59)
  br label %61

61:                                               ; preds = %24, %56, %58, %25
  ret void
}

declare dso_local %struct.urb* @udl_get_urb(%struct.drm_device*) #1

declare dso_local i8* @udl_vidreg_lock(i8*) #1

declare dso_local i8* @udl_set_blank(i8*, i32) #1

declare dso_local i8* @udl_vidreg_unlock(i8*) #1

declare dso_local i8* @udl_dummy_render(i8*) #1

declare dso_local i32 @udl_submit_urb(%struct.drm_device*, %struct.urb*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @udl_crtc_write_mode_to_hw(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

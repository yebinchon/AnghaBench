; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_crtc_write_mode_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_crtc_write_mode_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.udl_device* }
%struct.udl_device = type { i32, i32 }
%struct.urb = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"write mode info %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @udl_crtc_write_mode_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_crtc_write_mode_to_hw(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.udl_device*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.udl_device*, %struct.udl_device** %13, align 8
  store %struct.udl_device* %14, %struct.udl_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call %struct.urb* @udl_get_urb(%struct.drm_device* %15)
  store %struct.urb* %16, %struct.urb** %6, align 8
  %17 = load %struct.urb*, %struct.urb** %6, align 8
  %18 = icmp ne %struct.urb* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %29 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %32 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %27, i32 %30, i32 %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %38 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @udl_submit_urb(%struct.drm_device* %35, %struct.urb* %36, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %42 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %22, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.urb* @udl_get_urb(%struct.drm_device*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @udl_submit_urb(%struct.drm_device*, %struct.urb*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

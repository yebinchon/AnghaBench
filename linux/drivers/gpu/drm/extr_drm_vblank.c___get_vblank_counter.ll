; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c___get_vblank_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c___get_vblank_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_crtc*)* }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @__get_vblank_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_vblank_counter(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = load i32, i32* @DRIVER_MODESET, align 4
  %9 = call i64 @drm_core_check_feature(%struct.drm_device* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device* %12, i32 %13)
  store %struct.drm_crtc* %14, %struct.drm_crtc** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %16 = icmp ne %struct.drm_crtc* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %60

22:                                               ; preds = %11
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*)** %26, align 8
  %28 = icmp ne i32 (%struct.drm_crtc*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.drm_crtc*)*, i32 (%struct.drm_crtc*)** %33, align 8
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %36 = call i32 %34(%struct.drm_crtc* %35)
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.drm_device*, i32)**
  %44 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.drm_device*, i32)* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to i32 (%struct.drm_device*, i32)**
  %52 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %51, align 8
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %52(%struct.drm_device* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %38
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @drm_vblank_no_hw_counter(%struct.drm_device* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %46, %29, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_vblank_no_hw_counter(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_framebuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atombios_crtc_set_base(%struct.drm_crtc* %0, i32 %1, i32 %2, %struct.drm_framebuffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.radeon_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.drm_framebuffer* %3, %struct.drm_framebuffer** %9, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %10, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %11, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %19 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dce4_crtc_do_set_base(%struct.drm_crtc* %22, %struct.drm_framebuffer* %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  br label %43

27:                                               ; preds = %4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %29 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @avivo_crtc_do_set_base(%struct.drm_crtc* %32, %struct.drm_framebuffer* %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  br label %43

37:                                               ; preds = %27
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @radeon_crtc_do_set_base(%struct.drm_crtc* %38, %struct.drm_framebuffer* %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %31, %21
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @dce4_crtc_do_set_base(%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @avivo_crtc_do_set_base(%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32) #1

declare dso_local i32 @radeon_crtc_do_set_base(%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

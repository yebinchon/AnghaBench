; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@mmGRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@GRPH_FLIP_CONTROL__GRPH_SURFACE_UPDATE_H_RETRACE_EN_MASK = common dso_local global i32 0, align 4
@mmGRPH_PITCH = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @dce_v8_0_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_page_flip(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_crtc*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %14, i64 %16
  %18 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %17, align 8
  store %struct.amdgpu_crtc* %18, %struct.amdgpu_crtc** %9, align 8
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %20 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %10, align 8
  %25 = load i64, i64* @mmGRPH_FLIP_CONTROL, align 8
  %26 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %27 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @GRPH_FLIP_CONTROL__GRPH_SURFACE_UPDATE_H_RETRACE_EN_MASK, align 4
  br label %35

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = call i32 @WREG32(i64 %29, i32 %36)
  %38 = load i64, i64* @mmGRPH_PITCH, align 8
  %39 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %40 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %49 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %47, %54
  %56 = call i32 @WREG32(i64 %42, i32 %55)
  %57 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %58 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %59 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  %64 = call i32 @WREG32(i64 %61, i32 %63)
  %65 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %66 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %67 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @lower_32_bits(i32 %70)
  %72 = call i32 @WREG32(i64 %69, i32 %71)
  %73 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %74 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %75 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = call i32 @RREG32(i64 %77)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_page_flip.c"
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
@GRPH_FLIP_CONTROL = common dso_local global i32 0, align 4
@GRPH_SURFACE_UPDATE_IMMEDIATE_EN = common dso_local global i32 0, align 4
@mmGRPH_PITCH = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmGRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @dce_v11_0_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_page_flip(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_crtc*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %15, i64 %17
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %18, align 8
  store %struct.amdgpu_crtc* %19, %struct.amdgpu_crtc** %9, align 8
  %20 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %21 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %24, align 8
  store %struct.drm_framebuffer* %25, %struct.drm_framebuffer** %10, align 8
  %26 = load i64, i64* @mmGRPH_FLIP_CONTROL, align 8
  %27 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %28 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i32 @RREG32(i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @GRPH_FLIP_CONTROL, align 4
  %34 = load i32, i32* @GRPH_SURFACE_UPDATE_IMMEDIATE_EN, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* @mmGRPH_FLIP_CONTROL, align 8
  %41 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %42 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @WREG32(i64 %44, i32 %45)
  %47 = load i64, i64* @mmGRPH_PITCH, align 8
  %48 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %49 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %56, %63
  %65 = call i32 @WREG32(i64 %51, i32 %64)
  %66 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %67 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %68 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @upper_32_bits(i32 %71)
  %73 = call i32 @WREG32(i64 %70, i32 %72)
  %74 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %75 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %76 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @lower_32_bits(i32 %79)
  %81 = call i32 @WREG32(i64 %78, i32 %80)
  %82 = load i64, i64* @mmGRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %83 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %84 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = call i32 @RREG32(i64 %86)
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_show_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_show_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i64, i32 }

@mmCUR_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmCUR_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@mmCUR_CONTROL = common dso_local global i64 0, align 8
@CUR_CONTROL__CURSOR_EN_MASK = common dso_local global i32 0, align 4
@CURSOR_24_8_PRE_MULT = common dso_local global i32 0, align 4
@CUR_CONTROL__CURSOR_MODE__SHIFT = common dso_local global i32 0, align 4
@CURSOR_URGENT_1_2 = common dso_local global i32 0, align 4
@CUR_CONTROL__CURSOR_URGENT_CONTROL__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce_v6_0_show_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v6_0_show_cursor(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.amdgpu_crtc*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %5)
  store %struct.amdgpu_crtc* %6, %struct.amdgpu_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  %12 = load i64, i64* @mmCUR_SURFACE_ADDRESS_HIGH, align 8
  %13 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @upper_32_bits(i32 %19)
  %21 = call i32 @WREG32(i64 %16, i32 %20)
  %22 = load i64, i64* @mmCUR_SURFACE_ADDRESS, align 8
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @lower_32_bits(i32 %29)
  %31 = call i32 @WREG32(i64 %26, i32 %30)
  %32 = load i64, i64* @mmCUR_CONTROL, align 8
  %33 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* @CUR_CONTROL__CURSOR_EN_MASK, align 4
  %38 = load i32, i32* @CURSOR_24_8_PRE_MULT, align 4
  %39 = load i32, i32* @CUR_CONTROL__CURSOR_MODE__SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* @CURSOR_URGENT_1_2, align 4
  %43 = load i32, i32* @CUR_CONTROL__CURSOR_URGENT_CONTROL__SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = call i32 @WREG32_IDX(i64 %36, i32 %45)
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WREG32_IDX(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_show_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_show_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i64, i32 }

@mmCUR_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@mmCUR_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@mmCUR_CONTROL = common dso_local global i64 0, align 8
@CUR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_EN = common dso_local global i32 0, align 4
@CURSOR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce_v11_0_show_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_show_cursor(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.amdgpu_crtc*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %6)
  store %struct.amdgpu_crtc* %7, %struct.amdgpu_crtc** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load i64, i64* @mmCUR_SURFACE_ADDRESS_HIGH, align 8
  %14 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @upper_32_bits(i32 %20)
  %22 = call i32 @WREG32(i64 %17, i32 %21)
  %23 = load i64, i64* @mmCUR_SURFACE_ADDRESS, align 8
  %24 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @lower_32_bits(i32 %30)
  %32 = call i32 @WREG32(i64 %27, i32 %31)
  %33 = load i64, i64* @mmCUR_CONTROL, align 8
  %34 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = call i32 @RREG32_IDX(i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CUR_CONTROL, align 4
  %41 = load i32, i32* @CURSOR_EN, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CUR_CONTROL, align 4
  %45 = load i32, i32* @CURSOR_MODE, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 2)
  store i32 %46, i32* %5, align 4
  %47 = load i64, i64* @mmCUR_CONTROL, align 8
  %48 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @WREG32_IDX(i64 %51, i32 %52)
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @RREG32_IDX(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_IDX(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

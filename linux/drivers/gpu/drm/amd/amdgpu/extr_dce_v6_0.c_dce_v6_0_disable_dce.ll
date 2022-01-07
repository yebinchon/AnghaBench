; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_disable_dce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_disable_dce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmCRTC_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@CRTC_CONTROL__CRTC_MASTER_EN_MASK = common dso_local global i32 0, align 4
@mmCRTC_UPDATE_LOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_v6_0_disable_dce(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call i64 @amdgpu_atombios_has_dce_engine_info(%struct.amdgpu_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %73

9:                                                ; preds = %1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = call i32 @dce_v6_0_set_vga_render_state(%struct.amdgpu_device* %10, i32 0)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %69, %9
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = call i32 @dce_v6_0_get_num_crtc(%struct.amdgpu_device* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %12
  %18 = load i64, i64* @mmCRTC_CONTROL, align 8
  %19 = load i64*, i64** @crtc_offsets, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %18, %23
  %25 = call i32 @RREG32(i64 %24)
  %26 = load i32, i32* @CRTC_CONTROL__CRTC_MASTER_EN_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %17
  %31 = load i64, i64* @mmCRTC_UPDATE_LOCK, align 8
  %32 = load i64*, i64** @crtc_offsets, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = call i32 @WREG32(i64 %37, i32 1)
  %39 = load i64, i64* @mmCRTC_CONTROL, align 8
  %40 = load i64*, i64** @crtc_offsets, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %39, %44
  %46 = call i32 @RREG32(i64 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @CRTC_CONTROL__CRTC_MASTER_EN_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i64, i64* @mmCRTC_CONTROL, align 8
  %52 = load i64*, i64** @crtc_offsets, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %51, %56
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @WREG32(i64 %57, i32 %58)
  %60 = load i64, i64* @mmCRTC_UPDATE_LOCK, align 8
  %61 = load i64*, i64** @crtc_offsets, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %60, %65
  %67 = call i32 @WREG32(i64 %66, i32 0)
  br label %68

68:                                               ; preds = %30, %17
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %12

72:                                               ; preds = %12
  br label %73

73:                                               ; preds = %72, %1
  ret void
}

declare dso_local i64 @amdgpu_atombios_has_dce_engine_info(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v6_0_set_vga_render_state(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dce_v6_0_get_num_crtc(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

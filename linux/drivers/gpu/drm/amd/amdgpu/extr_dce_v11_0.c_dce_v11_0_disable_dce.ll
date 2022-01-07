; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_disable_dce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_disable_dce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmCRTC_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@CRTC_CONTROL = common dso_local global i32 0, align 4
@CRTC_MASTER_EN = common dso_local global i32 0, align 4
@mmCRTC_UPDATE_LOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_v11_0_disable_dce(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call i64 @amdgpu_atombios_has_dce_engine_info(%struct.amdgpu_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %74

9:                                                ; preds = %1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = call i32 @dce_v11_0_set_vga_render_state(%struct.amdgpu_device* %10, i32 0)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %70, %9
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = call i32 @dce_v11_0_get_num_crtc(%struct.amdgpu_device* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %12
  %18 = load i64, i64* @mmCRTC_CONTROL, align 8
  %19 = load i64*, i64** @crtc_offsets, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %18, %23
  %25 = call i32 @RREG32(i64 %24)
  %26 = load i32, i32* @CRTC_CONTROL, align 4
  %27 = load i32, i32* @CRTC_MASTER_EN, align 4
  %28 = call i32 @REG_GET_FIELD(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %17
  %32 = load i64, i64* @mmCRTC_UPDATE_LOCK, align 8
  %33 = load i64*, i64** @crtc_offsets, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %32, %37
  %39 = call i32 @WREG32(i64 %38, i32 1)
  %40 = load i64, i64* @mmCRTC_CONTROL, align 8
  %41 = load i64*, i64** @crtc_offsets, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  %47 = call i32 @RREG32(i64 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @CRTC_CONTROL, align 4
  %50 = load i32, i32* @CRTC_MASTER_EN, align 4
  %51 = call i32 @REG_SET_FIELD(i32 %48, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %3, align 4
  %52 = load i64, i64* @mmCRTC_CONTROL, align 8
  %53 = load i64*, i64** @crtc_offsets, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %52, %57
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @WREG32(i64 %58, i32 %59)
  %61 = load i64, i64* @mmCRTC_UPDATE_LOCK, align 8
  %62 = load i64*, i64** @crtc_offsets, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = call i32 @WREG32(i64 %67, i32 0)
  br label %69

69:                                               ; preds = %31, %17
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %12

73:                                               ; preds = %12
  br label %74

74:                                               ; preds = %73, %1
  ret void
}

declare dso_local i64 @amdgpu_atombios_has_dce_engine_info(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v11_0_set_vga_render_state(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dce_v11_0_get_num_crtc(%struct.amdgpu_device*) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

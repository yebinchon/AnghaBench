; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_afmt_update_ACR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_afmt_update_ACR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_afmt_acr = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@mmHDMI_ACR_32_0 = common dso_local global i64 0, align 8
@HDMI_ACR_32_0__HDMI_ACR_CTS_32__SHIFT = common dso_local global i32 0, align 4
@mmHDMI_ACR_32_1 = common dso_local global i64 0, align 8
@mmHDMI_ACR_44_0 = common dso_local global i64 0, align 8
@HDMI_ACR_44_0__HDMI_ACR_CTS_44__SHIFT = common dso_local global i32 0, align 4
@mmHDMI_ACR_44_1 = common dso_local global i64 0, align 8
@mmHDMI_ACR_48_0 = common dso_local global i64 0, align 8
@HDMI_ACR_48_0__HDMI_ACR_CTS_48__SHIFT = common dso_local global i32 0, align 4
@mmHDMI_ACR_48_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i64)* @dce_v8_0_afmt_update_ACR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_afmt_update_ACR(%struct.drm_encoder* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_afmt_acr, align 4
  %8 = alloca %struct.amdgpu_encoder*, align 8
  %9 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %10 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %6, align 8
  %17 = load i64, i64* %4, align 8
  call void @amdgpu_afmt_acr(%struct.amdgpu_afmt_acr* sret %7, i64 %17)
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %18)
  store %struct.amdgpu_encoder* %19, %struct.amdgpu_encoder** %8, align 8
  %20 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %21, align 8
  store %struct.amdgpu_encoder_atom_dig* %22, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %23 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %24 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* @mmHDMI_ACR_32_0, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %28, %29
  %31 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HDMI_ACR_32_0__HDMI_ACR_CTS_32__SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @WREG32(i64 %30, i32 %34)
  %36 = load i64, i64* @mmHDMI_ACR_32_1, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %36, %37
  %39 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WREG32(i64 %38, i32 %40)
  %42 = load i64, i64* @mmHDMI_ACR_44_0, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %42, %43
  %45 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HDMI_ACR_44_0__HDMI_ACR_CTS_44__SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @WREG32(i64 %44, i32 %48)
  %50 = load i64, i64* @mmHDMI_ACR_44_1, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %50, %51
  %53 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @WREG32(i64 %52, i32 %54)
  %56 = load i64, i64* @mmHDMI_ACR_48_0, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %56, %57
  %59 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HDMI_ACR_48_0__HDMI_ACR_CTS_48__SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = call i32 @WREG32(i64 %58, i32 %62)
  %64 = load i64, i64* @mmHDMI_ACR_48_1, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %64, %65
  %67 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @WREG32(i64 %66, i32 %68)
  ret void
}

declare dso_local void @amdgpu_afmt_acr(%struct.amdgpu_afmt_acr* sret, i64) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

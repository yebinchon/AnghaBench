; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_get_atc_vmid_pasid_mapping_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_get_atc_vmid_pasid_mapping_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@ATHUB = common dso_local global i32 0, align 4
@mmATC_VMID0_PASID_MAPPING = common dso_local global i32 0, align 4
@ATC_VMID0_PASID_MAPPING__PASID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgd_gfx_v9_get_atc_vmid_pasid_mapping_pasid(%struct.kgd_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.kgd_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %8 = bitcast %struct.kgd_dev* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load i32, i32* @ATHUB, align 4
  %10 = load i32, i32* @mmATC_VMID0_PASID_MAPPING, align 4
  %11 = call i64 @SOC15_REG_OFFSET(i32 %9, i32 0, i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @RREG32(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ATC_VMID0_PASID_MAPPING__PASID_MASK, align 4
  %17 = and i32 %15, %16
  ret i32 %17
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

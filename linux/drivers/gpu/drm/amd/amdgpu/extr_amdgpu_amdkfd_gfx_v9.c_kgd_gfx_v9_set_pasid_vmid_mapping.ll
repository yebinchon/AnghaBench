; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_set_pasid_vmid_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_set_pasid_vmid_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@ATC_VMID0_PASID_MAPPING__VALID_MASK = common dso_local global i32 0, align 4
@ATHUB = common dso_local global i32 0, align 4
@mmATC_VMID0_PASID_MAPPING = common dso_local global i32 0, align 4
@mmATC_VMID_PASID_MAPPING_UPDATE_STATUS = common dso_local global i32 0, align 4
@OSSSYS = common dso_local global i32 0, align 4
@mmIH_VMID_0_LUT = common dso_local global i32 0, align 4
@mmATC_VMID16_PASID_MAPPING = common dso_local global i32 0, align 4
@mmIH_VMID_0_LUT_MM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgd_gfx_v9_set_pasid_vmid_mapping(%struct.kgd_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %10 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %9)
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ATC_VMID0_PASID_MAPPING__VALID_MASK, align 4
  %17 = or i32 %15, %16
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi i32 [ 0, %13 ], [ %17, %14 ]
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @ATHUB, align 4
  %21 = load i32, i32* @mmATC_VMID0_PASID_MAPPING, align 4
  %22 = call i64 @SOC15_REG_OFFSET(i32 %20, i32 0, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @WREG32(i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %38, %18
  %29 = load i32, i32* @ATHUB, align 4
  %30 = load i32, i32* @mmATC_VMID_PASID_MAPPING_UPDATE_STATUS, align 4
  %31 = call i64 @SOC15_REG_OFFSET(i32 %29, i32 0, i32 %30)
  %32 = call i32 @RREG32(i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 (...) @cpu_relax()
  br label %28

40:                                               ; preds = %28
  %41 = load i32, i32* @ATHUB, align 4
  %42 = load i32, i32* @mmATC_VMID_PASID_MAPPING_UPDATE_STATUS, align 4
  %43 = call i64 @SOC15_REG_OFFSET(i32 %41, i32 0, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 1, %44
  %46 = call i32 @WREG32(i64 %43, i32 %45)
  %47 = load i32, i32* @OSSSYS, align 4
  %48 = load i32, i32* @mmIH_VMID_0_LUT, align 4
  %49 = call i64 @SOC15_REG_OFFSET(i32 %47, i32 0, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @WREG32(i64 %52, i32 %53)
  %55 = load i32, i32* @ATHUB, align 4
  %56 = load i32, i32* @mmATC_VMID16_PASID_MAPPING, align 4
  %57 = call i64 @SOC15_REG_OFFSET(i32 %55, i32 0, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @WREG32(i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %74, %40
  %64 = load i32, i32* @ATHUB, align 4
  %65 = load i32, i32* @mmATC_VMID_PASID_MAPPING_UPDATE_STATUS, align 4
  %66 = call i64 @SOC15_REG_OFFSET(i32 %64, i32 0, i32 %65)
  %67 = call i32 @RREG32(i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 16
  %70 = shl i32 1, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = call i32 (...) @cpu_relax()
  br label %63

76:                                               ; preds = %63
  %77 = load i32, i32* @ATHUB, align 4
  %78 = load i32, i32* @mmATC_VMID_PASID_MAPPING_UPDATE_STATUS, align 4
  %79 = call i64 @SOC15_REG_OFFSET(i32 %77, i32 0, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 16
  %82 = shl i32 1, %81
  %83 = call i32 @WREG32(i64 %79, i32 %82)
  %84 = load i32, i32* @OSSSYS, align 4
  %85 = load i32, i32* @mmIH_VMID_0_LUT_MM, align 4
  %86 = call i64 @SOC15_REG_OFFSET(i32 %84, i32 0, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @WREG32(i64 %89, i32 %90)
  ret i32 0
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

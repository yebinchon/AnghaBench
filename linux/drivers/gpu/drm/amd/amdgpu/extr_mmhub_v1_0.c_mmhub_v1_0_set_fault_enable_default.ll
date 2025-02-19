; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_set_fault_enable_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_set_fault_enable_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmVM_L2_PROTECTION_FAULT_CNTL = common dso_local global i32 0, align 4
@VM_L2_PROTECTION_FAULT_CNTL = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PDE0_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PDE1_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PDE2_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@TRANSLATE_FURTHER_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@NACK_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VALID_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@READ_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@WRITE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@CRASH_ON_NO_RETRY_FAULT = common dso_local global i32 0, align 4
@CRASH_ON_RETRY_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmhub_v1_0_set_fault_enable_default(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %85

10:                                               ; preds = %2
  %11 = load i32, i32* @MMHUB, align 4
  %12 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_CNTL, align 4
  %13 = call i32 @RREG32_SOC15(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %16 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @REG_SET_FIELD(i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %21 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %26 = load i32, i32* @PDE1_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @REG_SET_FIELD(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %31 = load i32, i32* @PDE2_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @REG_SET_FIELD(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %36 = load i32, i32* @TRANSLATE_FURTHER_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %41 = load i32, i32* @NACK_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %46 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @REG_SET_FIELD(i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %51 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @REG_SET_FIELD(i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %56 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %61 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @REG_SET_FIELD(i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %66 = load i32, i32* @EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @REG_SET_FIELD(i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %10
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %74 = load i32, i32* @CRASH_ON_NO_RETRY_FAULT, align 4
  %75 = call i32 @REG_SET_FIELD(i32 %72, i32 %73, i32 %74, i32 1)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL, align 4
  %78 = load i32, i32* @CRASH_ON_RETRY_FAULT, align 4
  %79 = call i32 @REG_SET_FIELD(i32 %76, i32 %77, i32 %78, i32 1)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %71, %10
  %81 = load i32, i32* @MMHUB, align 4
  %82 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_CNTL, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @WREG32_SOC15(i32 %81, i32 0, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %9
  ret void
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

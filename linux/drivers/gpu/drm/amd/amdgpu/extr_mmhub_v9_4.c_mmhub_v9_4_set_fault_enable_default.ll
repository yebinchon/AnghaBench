; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_set_fault_enable_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_set_fault_enable_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB_NUM_INSTANCES = common dso_local global i32 0, align 4
@MMHUB = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@VML2PF0_VM_L2_PROTECTION_FAULT_CNTL = common dso_local global i32 0, align 4
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
define dso_local void @mmhub_v9_4_set_fault_enable_default(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %92, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MMHUB_NUM_INSTANCES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %95

11:                                               ; preds = %7
  %12 = load i32, i32* @MMHUB, align 4
  %13 = load i32, i32* @mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i32 @RREG32_SOC15_OFFSET(i32 %12, i32 0, i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %20 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %25 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %30 = load i32, i32* @PDE1_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @REG_SET_FIELD(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %35 = load i32, i32* @PDE2_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %40 = load i32, i32* @TRANSLATE_FURTHER_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %45 = load i32, i32* @NACK_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %50 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @REG_SET_FIELD(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %55 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %60 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @REG_SET_FIELD(i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %65 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @REG_SET_FIELD(i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %70 = load i32, i32* @EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @REG_SET_FIELD(i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %11
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %78 = load i32, i32* @CRASH_ON_NO_RETRY_FAULT, align 4
  %79 = call i32 @REG_SET_FIELD(i32 %76, i32 %77, i32 %78, i32 1)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %82 = load i32, i32* @CRASH_ON_RETRY_FAULT, align 4
  %83 = call i32 @REG_SET_FIELD(i32 %80, i32 %81, i32 %82, i32 1)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %75, %11
  %85 = load i32, i32* @MMHUB, align 4
  %86 = load i32, i32* @mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @WREG32_SOC15_OFFSET(i32 %85, i32 0, i32 %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %7

95:                                               ; preds = %7
  ret void
}

declare dso_local i32 @RREG32_SOC15_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

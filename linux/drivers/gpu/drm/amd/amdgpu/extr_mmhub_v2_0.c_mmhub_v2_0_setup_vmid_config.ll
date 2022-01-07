; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_setup_vmid_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_setup_vmid_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@MMHUB = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@MMVM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@PAGE_TABLE_DEPTH = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PDE0_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VALID_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@READ_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@WRITE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PAGE_TABLE_BLOCK_SIZE = common dso_local global i32 0, align 4
@RETRY_PERMISSION_OR_INVALID_PAGE_FAULT = common dso_local global i32 0, align 4
@amdgpu_noretry = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT1_PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT1_PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT1_PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT1_PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @mmhub_v2_0_setup_vmid_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v2_0_setup_vmid_config(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %107, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 14
  br i1 %7, label %8, label %110

8:                                                ; preds = %5
  %9 = load i32, i32* @MMHUB, align 4
  %10 = load i32, i32* @mmMMVM_CONTEXT1_CNTL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @RREG32_SOC15_OFFSET(i32 %9, i32 0, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %15 = load i32, i32* @ENABLE_CONTEXT, align 4
  %16 = call i32 @REG_SET_FIELD(i32 %13, i32 %14, i32 %15, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %19 = load i32, i32* @PAGE_TABLE_DEPTH, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @REG_SET_FIELD(i32 %17, i32 %18, i32 %19, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %27 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %28 = call i32 @REG_SET_FIELD(i32 %25, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %31 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %32 = call i32 @REG_SET_FIELD(i32 %29, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %35 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35, i32 1)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %39 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %40 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %43 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %44 = call i32 @REG_SET_FIELD(i32 %41, i32 %42, i32 %43, i32 1)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %47 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %48 = call i32 @REG_SET_FIELD(i32 %45, i32 %46, i32 %47, i32 1)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %51 = load i32, i32* @EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %52 = call i32 @REG_SET_FIELD(i32 %49, i32 %50, i32 %51, i32 1)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %55 = load i32, i32* @PAGE_TABLE_BLOCK_SIZE, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 9
  %61 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MMVM_CONTEXT1_CNTL, align 4
  %64 = load i32, i32* @RETRY_PERMISSION_OR_INVALID_PAGE_FAULT, align 4
  %65 = load i32, i32* @amdgpu_noretry, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @REG_SET_FIELD(i32 %62, i32 %63, i32 %64, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @MMHUB, align 4
  %71 = load i32, i32* @mmMMVM_CONTEXT1_CNTL, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @WREG32_SOC15_OFFSET(i32 %70, i32 0, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @MMHUB, align 4
  %76 = load i32, i32* @mmMMVM_CONTEXT1_PAGE_TABLE_START_ADDR_LO32, align 4
  %77 = load i32, i32* %3, align 4
  %78 = mul nsw i32 %77, 2
  %79 = call i32 @WREG32_SOC15_OFFSET(i32 %75, i32 0, i32 %76, i32 %78, i32 0)
  %80 = load i32, i32* @MMHUB, align 4
  %81 = load i32, i32* @mmMMVM_CONTEXT1_PAGE_TABLE_START_ADDR_HI32, align 4
  %82 = load i32, i32* %3, align 4
  %83 = mul nsw i32 %82, 2
  %84 = call i32 @WREG32_SOC15_OFFSET(i32 %80, i32 0, i32 %81, i32 %83, i32 0)
  %85 = load i32, i32* @MMHUB, align 4
  %86 = load i32, i32* @mmMMVM_CONTEXT1_PAGE_TABLE_END_ADDR_LO32, align 4
  %87 = load i32, i32* %3, align 4
  %88 = mul nsw i32 %87, 2
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  %94 = call i32 @lower_32_bits(i64 %93)
  %95 = call i32 @WREG32_SOC15_OFFSET(i32 %85, i32 0, i32 %86, i32 %88, i32 %94)
  %96 = load i32, i32* @MMHUB, align 4
  %97 = load i32, i32* @mmMMVM_CONTEXT1_PAGE_TABLE_END_ADDR_HI32, align 4
  %98 = load i32, i32* %3, align 4
  %99 = mul nsw i32 %98, 2
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, 1
  %105 = call i32 @upper_32_bits(i64 %104)
  %106 = call i32 @WREG32_SOC15_OFFSET(i32 %96, i32 0, i32 %97, i32 %99, i32 %105)
  br label %107

107:                                              ; preds = %8
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %5

110:                                              ; preds = %5
  ret void
}

declare dso_local i32 @RREG32_SOC15_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

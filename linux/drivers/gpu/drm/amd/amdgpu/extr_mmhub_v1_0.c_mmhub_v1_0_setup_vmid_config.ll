; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_setup_vmid_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_setup_vmid_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@MMHUB = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
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
@mmVM_CONTEXT1_PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @mmhub_v1_0_setup_vmid_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v1_0_setup_vmid_config(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = sub i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = sub i32 %24, 9
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %20
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %122, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 14
  br i1 %29, label %30, label %125

30:                                               ; preds = %27
  %31 = load i32, i32* @MMHUB, align 4
  %32 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @RREG32_SOC15_OFFSET(i32 %31, i32 0, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %37 = load i32, i32* @ENABLE_CONTEXT, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %41 = load i32, i32* @PAGE_TABLE_DEPTH, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %46 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %47 = call i32 @REG_SET_FIELD(i32 %44, i32 %45, i32 %46, i32 1)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %50 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %51 = call i32 @REG_SET_FIELD(i32 %48, i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %54 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %55 = call i32 @REG_SET_FIELD(i32 %52, i32 %53, i32 %54, i32 1)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %58 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %59 = call i32 @REG_SET_FIELD(i32 %56, i32 %57, i32 %58, i32 1)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %62 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %63 = call i32 @REG_SET_FIELD(i32 %60, i32 %61, i32 %62, i32 1)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %66 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %67 = call i32 @REG_SET_FIELD(i32 %64, i32 %65, i32 %66, i32 1)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %70 = load i32, i32* @EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %71 = call i32 @REG_SET_FIELD(i32 %68, i32 %69, i32 %70, i32 1)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %74 = load i32, i32* @PAGE_TABLE_BLOCK_SIZE, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @REG_SET_FIELD(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %79 = load i32, i32* @RETRY_PERMISSION_OR_INVALID_PAGE_FAULT, align 4
  %80 = load i32, i32* @amdgpu_noretry, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @REG_SET_FIELD(i32 %77, i32 %78, i32 %79, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @MMHUB, align 4
  %86 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @WREG32_SOC15_OFFSET(i32 %85, i32 0, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @MMHUB, align 4
  %91 = load i32, i32* @mmVM_CONTEXT1_PAGE_TABLE_START_ADDR_LO32, align 4
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 %92, 2
  %94 = call i32 @WREG32_SOC15_OFFSET(i32 %90, i32 0, i32 %91, i32 %93, i32 0)
  %95 = load i32, i32* @MMHUB, align 4
  %96 = load i32, i32* @mmVM_CONTEXT1_PAGE_TABLE_START_ADDR_HI32, align 4
  %97 = load i32, i32* %6, align 4
  %98 = mul nsw i32 %97, 2
  %99 = call i32 @WREG32_SOC15_OFFSET(i32 %95, i32 0, i32 %96, i32 %98, i32 0)
  %100 = load i32, i32* @MMHUB, align 4
  %101 = load i32, i32* @mmVM_CONTEXT1_PAGE_TABLE_END_ADDR_LO32, align 4
  %102 = load i32, i32* %6, align 4
  %103 = mul nsw i32 %102, 2
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i32 @lower_32_bits(i64 %108)
  %110 = call i32 @WREG32_SOC15_OFFSET(i32 %100, i32 0, i32 %101, i32 %103, i32 %109)
  %111 = load i32, i32* @MMHUB, align 4
  %112 = load i32, i32* @mmVM_CONTEXT1_PAGE_TABLE_END_ADDR_HI32, align 4
  %113 = load i32, i32* %6, align 4
  %114 = mul nsw i32 %113, 2
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 1
  %120 = call i32 @upper_32_bits(i64 %119)
  %121 = call i32 @WREG32_SOC15_OFFSET(i32 %111, i32 0, i32 %112, i32 %114, i32 %120)
  br label %122

122:                                              ; preds = %30
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %27

125:                                              ; preds = %27
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

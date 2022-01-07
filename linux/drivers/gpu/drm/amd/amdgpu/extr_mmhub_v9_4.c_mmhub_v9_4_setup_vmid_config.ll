; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_setup_vmid_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_setup_vmid_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@MMHUB = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@VML2VC0_VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
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
@mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_setup_vmid_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_setup_vmid_config(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %129, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 14
  br i1 %9, label %10, label %132

10:                                               ; preds = %7
  %11 = load i32, i32* @MMHUB, align 4
  %12 = load i32, i32* @mmVML2VC0_VM_CONTEXT1_CNTL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @RREG32_SOC15_OFFSET(i32 %11, i32 0, i32 %12, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %21 = load i32, i32* @ENABLE_CONTEXT, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21, i32 1)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %25 = load i32, i32* @PAGE_TABLE_DEPTH, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %25, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %33 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %37 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %41 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %45 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %49 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %50 = call i32 @REG_SET_FIELD(i32 %47, i32 %48, i32 %49, i32 1)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %53 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %54 = call i32 @REG_SET_FIELD(i32 %51, i32 %52, i32 %53, i32 1)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %57 = load i32, i32* @EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %58 = call i32 @REG_SET_FIELD(i32 %55, i32 %56, i32 %57, i32 1)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %61 = load i32, i32* @PAGE_TABLE_BLOCK_SIZE, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 9
  %67 = call i32 @REG_SET_FIELD(i32 %59, i32 %60, i32 %61, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @VML2VC0_VM_CONTEXT1_CNTL, align 4
  %70 = load i32, i32* @RETRY_PERMISSION_OR_INVALID_PAGE_FAULT, align 4
  %71 = call i32 @REG_SET_FIELD(i32 %68, i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @MMHUB, align 4
  %73 = load i32, i32* @mmVML2VC0_VM_CONTEXT1_CNTL, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @WREG32_SOC15_OFFSET(i32 %72, i32 0, i32 %73, i32 %78, i32 %79)
  %81 = load i32, i32* @MMHUB, align 4
  %82 = load i32, i32* @mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_START_ADDR_LO32, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %86, 2
  %88 = add nsw i32 %85, %87
  %89 = call i32 @WREG32_SOC15_OFFSET(i32 %81, i32 0, i32 %82, i32 %88, i32 0)
  %90 = load i32, i32* @MMHUB, align 4
  %91 = load i32, i32* @mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_START_ADDR_HI32, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 %94, %96
  %98 = call i32 @WREG32_SOC15_OFFSET(i32 %90, i32 0, i32 %91, i32 %97, i32 0)
  %99 = load i32, i32* @MMHUB, align 4
  %100 = load i32, i32* @mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_END_ADDR_LO32, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %6, align 4
  %105 = mul nsw i32 %104, 2
  %106 = add nsw i32 %103, %105
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = call i32 @lower_32_bits(i64 %111)
  %113 = call i32 @WREG32_SOC15_OFFSET(i32 %99, i32 0, i32 %100, i32 %106, i32 %112)
  %114 = load i32, i32* @MMHUB, align 4
  %115 = load i32, i32* @mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_END_ADDR_HI32, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 %119, 2
  %121 = add nsw i32 %118, %120
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %125, 1
  %127 = call i32 @upper_32_bits(i64 %126)
  %128 = call i32 @WREG32_SOC15_OFFSET(i32 %114, i32 0, i32 %115, i32 %121, i32 %127)
  br label %129

129:                                              ; preds = %10
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %7

132:                                              ; preds = %7
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

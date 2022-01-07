; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_init_cache_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_init_cache_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MMHUB = common dso_local global i32 0, align 4
@mmMMVM_L2_CNTL = common dso_local global i32 0, align 4
@MMVM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_DEFAULT_PAGE_OUT_TO_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@L2_PDE0_CACHE_TAG_GENERATION_MODE = common dso_local global i32 0, align 4
@PDE_FAULT_CLASSIFICATION = common dso_local global i32 0, align 4
@CONTEXT1_IDENTITY_ACCESS_MODE = common dso_local global i32 0, align 4
@IDENTITY_MODE_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@mmMMVM_L2_CNTL2 = common dso_local global i32 0, align 4
@MMVM_L2_CNTL2 = common dso_local global i32 0, align 4
@INVALIDATE_ALL_L1_TLBS = common dso_local global i32 0, align 4
@INVALIDATE_L2_CACHE = common dso_local global i32 0, align 4
@mmMMVM_L2_CNTL3_DEFAULT = common dso_local global i32 0, align 4
@MMVM_L2_CNTL3 = common dso_local global i32 0, align 4
@BANK_SELECT = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@mmMMVM_L2_CNTL3 = common dso_local global i32 0, align 4
@mmMMVM_L2_CNTL4_DEFAULT = common dso_local global i32 0, align 4
@MMVM_L2_CNTL4 = common dso_local global i32 0, align 4
@VMC_TAP_PDE_REQUEST_PHYSICAL = common dso_local global i32 0, align 4
@VMC_TAP_PTE_REQUEST_PHYSICAL = common dso_local global i32 0, align 4
@mmMMVM_L2_CNTL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @mmhub_v2_0_init_cache_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v2_0_init_cache_regs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @MMHUB, align 4
  %5 = load i32, i32* @mmMMVM_L2_CNTL, align 4
  %6 = call i32 @RREG32_SOC15(i32 %4, i32 0, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MMVM_L2_CNTL, align 4
  %9 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %10 = call i32 @REG_SET_FIELD(i32 %7, i32 %8, i32 %9, i32 1)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MMVM_L2_CNTL, align 4
  %13 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %14 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MMVM_L2_CNTL, align 4
  %17 = load i32, i32* @ENABLE_DEFAULT_PAGE_OUT_TO_SYSTEM_MEMORY, align 4
  %18 = call i32 @REG_SET_FIELD(i32 %15, i32 %16, i32 %17, i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MMVM_L2_CNTL, align 4
  %21 = load i32, i32* @L2_PDE0_CACHE_TAG_GENERATION_MODE, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MMVM_L2_CNTL, align 4
  %25 = load i32, i32* @PDE_FAULT_CLASSIFICATION, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MMVM_L2_CNTL, align 4
  %29 = load i32, i32* @CONTEXT1_IDENTITY_ACCESS_MODE, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 1)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MMVM_L2_CNTL, align 4
  %33 = load i32, i32* @IDENTITY_MODE_FRAGMENT_SIZE, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @MMHUB, align 4
  %36 = load i32, i32* @mmMMVM_L2_CNTL, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @WREG32_SOC15(i32 %35, i32 0, i32 %36, i32 %37)
  %39 = load i32, i32* @MMHUB, align 4
  %40 = load i32, i32* @mmMMVM_L2_CNTL2, align 4
  %41 = call i32 @RREG32_SOC15(i32 %39, i32 0, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @MMVM_L2_CNTL2, align 4
  %44 = load i32, i32* @INVALIDATE_ALL_L1_TLBS, align 4
  %45 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %44, i32 1)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @MMVM_L2_CNTL2, align 4
  %48 = load i32, i32* @INVALIDATE_L2_CACHE, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @MMHUB, align 4
  %51 = load i32, i32* @mmMMVM_L2_CNTL2, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @WREG32_SOC15(i32 %50, i32 0, i32 %51, i32 %52)
  %54 = load i32, i32* @mmMMVM_L2_CNTL3_DEFAULT, align 4
  store i32 %54, i32* %3, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %1
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @MMVM_L2_CNTL3, align 4
  %63 = load i32, i32* @BANK_SELECT, align 4
  %64 = call i32 @REG_SET_FIELD(i32 %61, i32 %62, i32 %63, i32 12)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @MMVM_L2_CNTL3, align 4
  %67 = load i32, i32* @L2_CACHE_BIGK_FRAGMENT_SIZE, align 4
  %68 = call i32 @REG_SET_FIELD(i32 %65, i32 %66, i32 %67, i32 9)
  store i32 %68, i32* %3, align 4
  br label %78

69:                                               ; preds = %1
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @MMVM_L2_CNTL3, align 4
  %72 = load i32, i32* @BANK_SELECT, align 4
  %73 = call i32 @REG_SET_FIELD(i32 %70, i32 %71, i32 %72, i32 9)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @MMVM_L2_CNTL3, align 4
  %76 = load i32, i32* @L2_CACHE_BIGK_FRAGMENT_SIZE, align 4
  %77 = call i32 @REG_SET_FIELD(i32 %74, i32 %75, i32 %76, i32 6)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %69, %60
  %79 = load i32, i32* @MMHUB, align 4
  %80 = load i32, i32* @mmMMVM_L2_CNTL3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @WREG32_SOC15(i32 %79, i32 0, i32 %80, i32 %81)
  %83 = load i32, i32* @mmMMVM_L2_CNTL4_DEFAULT, align 4
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @MMVM_L2_CNTL4, align 4
  %86 = load i32, i32* @VMC_TAP_PDE_REQUEST_PHYSICAL, align 4
  %87 = call i32 @REG_SET_FIELD(i32 %84, i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @MMVM_L2_CNTL4, align 4
  %90 = load i32, i32* @VMC_TAP_PTE_REQUEST_PHYSICAL, align 4
  %91 = call i32 @REG_SET_FIELD(i32 %88, i32 %89, i32 %90, i32 0)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* @MMHUB, align 4
  %93 = load i32, i32* @mmMMVM_L2_CNTL4, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @WREG32_SOC15(i32 %92, i32 0, i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

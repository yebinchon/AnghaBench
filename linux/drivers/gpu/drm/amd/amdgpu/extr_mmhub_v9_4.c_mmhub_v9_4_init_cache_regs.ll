; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_init_cache_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_init_cache_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MMHUB = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CNTL = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@VML2PF0_VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@L2_PDE0_CACHE_TAG_GENERATION_MODE = common dso_local global i32 0, align 4
@PDE_FAULT_CLASSIFICATION = common dso_local global i32 0, align 4
@CONTEXT1_IDENTITY_ACCESS_MODE = common dso_local global i32 0, align 4
@IDENTITY_MODE_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CNTL2 = common dso_local global i32 0, align 4
@VML2PF0_VM_L2_CNTL2 = common dso_local global i32 0, align 4
@INVALIDATE_ALL_L1_TLBS = common dso_local global i32 0, align 4
@INVALIDATE_L2_CACHE = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CNTL3_DEFAULT = common dso_local global i32 0, align 4
@VML2PF0_VM_L2_CNTL3 = common dso_local global i32 0, align 4
@BANK_SELECT = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CNTL3 = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CNTL4_DEFAULT = common dso_local global i32 0, align 4
@VML2PF0_VM_L2_CNTL4 = common dso_local global i32 0, align 4
@VMC_TAP_PDE_REQUEST_PHYSICAL = common dso_local global i32 0, align 4
@VMC_TAP_PTE_REQUEST_PHYSICAL = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CNTL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_init_cache_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_init_cache_regs(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MMHUB, align 4
  %7 = load i32, i32* @mmVML2PF0_VM_L2_CNTL, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %10 = mul nsw i32 %8, %9
  %11 = call i32 @RREG32_SOC15_OFFSET(i32 %6, i32 0, i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VML2PF0_VM_L2_CNTL, align 4
  %14 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %15 = call i32 @REG_SET_FIELD(i32 %12, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VML2PF0_VM_L2_CNTL, align 4
  %18 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %19 = call i32 @REG_SET_FIELD(i32 %16, i32 %17, i32 %18, i32 1)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @VML2PF0_VM_L2_CNTL, align 4
  %22 = load i32, i32* @L2_PDE0_CACHE_TAG_GENERATION_MODE, align 4
  %23 = call i32 @REG_SET_FIELD(i32 %20, i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VML2PF0_VM_L2_CNTL, align 4
  %26 = load i32, i32* @PDE_FAULT_CLASSIFICATION, align 4
  %27 = call i32 @REG_SET_FIELD(i32 %24, i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @VML2PF0_VM_L2_CNTL, align 4
  %30 = load i32, i32* @CONTEXT1_IDENTITY_ACCESS_MODE, align 4
  %31 = call i32 @REG_SET_FIELD(i32 %28, i32 %29, i32 %30, i32 1)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @VML2PF0_VM_L2_CNTL, align 4
  %34 = load i32, i32* @IDENTITY_MODE_FRAGMENT_SIZE, align 4
  %35 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @MMHUB, align 4
  %37 = load i32, i32* @mmVML2PF0_VM_L2_CNTL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @WREG32_SOC15_OFFSET(i32 %36, i32 0, i32 %37, i32 %40, i32 %41)
  %43 = load i32, i32* @MMHUB, align 4
  %44 = load i32, i32* @mmVML2PF0_VM_L2_CNTL2, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 @RREG32_SOC15_OFFSET(i32 %43, i32 0, i32 %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @VML2PF0_VM_L2_CNTL2, align 4
  %51 = load i32, i32* @INVALIDATE_ALL_L1_TLBS, align 4
  %52 = call i32 @REG_SET_FIELD(i32 %49, i32 %50, i32 %51, i32 1)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @VML2PF0_VM_L2_CNTL2, align 4
  %55 = load i32, i32* @INVALIDATE_L2_CACHE, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @MMHUB, align 4
  %58 = load i32, i32* @mmVML2PF0_VM_L2_CNTL2, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @WREG32_SOC15_OFFSET(i32 %57, i32 0, i32 %58, i32 %61, i32 %62)
  %64 = load i32, i32* @mmVML2PF0_VM_L2_CNTL3_DEFAULT, align 4
  store i32 %64, i32* %5, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %2
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @VML2PF0_VM_L2_CNTL3, align 4
  %73 = load i32, i32* @BANK_SELECT, align 4
  %74 = call i32 @REG_SET_FIELD(i32 %71, i32 %72, i32 %73, i32 12)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @VML2PF0_VM_L2_CNTL3, align 4
  %77 = load i32, i32* @L2_CACHE_BIGK_FRAGMENT_SIZE, align 4
  %78 = call i32 @REG_SET_FIELD(i32 %75, i32 %76, i32 %77, i32 9)
  store i32 %78, i32* %5, align 4
  br label %88

79:                                               ; preds = %2
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @VML2PF0_VM_L2_CNTL3, align 4
  %82 = load i32, i32* @BANK_SELECT, align 4
  %83 = call i32 @REG_SET_FIELD(i32 %80, i32 %81, i32 %82, i32 9)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @VML2PF0_VM_L2_CNTL3, align 4
  %86 = load i32, i32* @L2_CACHE_BIGK_FRAGMENT_SIZE, align 4
  %87 = call i32 @REG_SET_FIELD(i32 %84, i32 %85, i32 %86, i32 6)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %79, %70
  %89 = load i32, i32* @MMHUB, align 4
  %90 = load i32, i32* @mmVML2PF0_VM_L2_CNTL3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @WREG32_SOC15_OFFSET(i32 %89, i32 0, i32 %90, i32 %93, i32 %94)
  %96 = load i32, i32* @mmVML2PF0_VM_L2_CNTL4_DEFAULT, align 4
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @VML2PF0_VM_L2_CNTL4, align 4
  %99 = load i32, i32* @VMC_TAP_PDE_REQUEST_PHYSICAL, align 4
  %100 = call i32 @REG_SET_FIELD(i32 %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @VML2PF0_VM_L2_CNTL4, align 4
  %103 = load i32, i32* @VMC_TAP_PTE_REQUEST_PHYSICAL, align 4
  %104 = call i32 @REG_SET_FIELD(i32 %101, i32 %102, i32 %103, i32 0)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @MMHUB, align 4
  %106 = load i32, i32* @mmVML2PF0_VM_L2_CNTL4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @WREG32_SOC15_OFFSET(i32 %105, i32 0, i32 %106, i32 %109, i32 %110)
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

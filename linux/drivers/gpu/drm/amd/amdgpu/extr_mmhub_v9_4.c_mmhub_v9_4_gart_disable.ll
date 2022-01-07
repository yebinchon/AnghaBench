; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_gart_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_gart_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB_NUM_INSTANCES = common dso_local global i32 0, align 4
@MMHUB = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@mmVMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@VMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_ADVANCED_DRIVER_MODEL = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CNTL = common dso_local global i32 0, align 4
@VML2PF0_VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_CNTL3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmhub_v9_4_gart_disable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %71, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MMHUB_NUM_INSTANCES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %74

10:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %23, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* @MMHUB, align 4
  %16 = load i32, i32* @mmVML2VC0_VM_CONTEXT0_CNTL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @WREG32_SOC15_OFFSET(i32 %15, i32 0, i32 %16, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i32, i32* @MMHUB, align 4
  %28 = load i32, i32* @mmVMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @RREG32_SOC15_OFFSET(i32 %27, i32 0, i32 %28, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @VMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL, align 4
  %35 = load i32, i32* @ENABLE_L1_TLB, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @VMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL, align 4
  %39 = load i32, i32* @ENABLE_ADVANCED_DRIVER_MODEL, align 4
  %40 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @MMHUB, align 4
  %42 = load i32, i32* @mmVMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @WREG32_SOC15_OFFSET(i32 %41, i32 0, i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* @MMHUB, align 4
  %49 = load i32, i32* @mmVML2PF0_VM_L2_CNTL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i32 @RREG32_SOC15_OFFSET(i32 %48, i32 0, i32 %49, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @VML2PF0_VM_L2_CNTL, align 4
  %56 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %57 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @MMHUB, align 4
  %59 = load i32, i32* @mmVML2PF0_VM_L2_CNTL, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @WREG32_SOC15_OFFSET(i32 %58, i32 0, i32 %59, i32 %62, i32 %63)
  %65 = load i32, i32* @MMHUB, align 4
  %66 = load i32, i32* @mmVML2PF0_VM_L2_CNTL3, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %69 = mul nsw i32 %67, %68
  %70 = call i32 @WREG32_SOC15_OFFSET(i32 %65, i32 0, i32 %66, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %26
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %6

74:                                               ; preds = %6
  ret void
}

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

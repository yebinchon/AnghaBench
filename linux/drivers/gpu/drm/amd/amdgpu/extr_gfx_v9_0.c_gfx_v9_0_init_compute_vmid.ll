; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_compute_vmid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_compute_vmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@DEFAULT_SH_MEM_BASES = common dso_local global i32 0, align 4
@SH_MEM_ADDRESS_MODE_64 = common dso_local global i32 0, align 4
@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT = common dso_local global i32 0, align 4
@FIRST_COMPUTE_VMID = common dso_local global i32 0, align 4
@LAST_COMPUTE_VMID = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4
@mmSH_MEM_BASES = common dso_local global i32 0, align 4
@mmGDS_VMID0_BASE = common dso_local global i32 0, align 4
@mmGDS_VMID0_SIZE = common dso_local global i32 0, align 4
@mmGDS_GWS_VMID0 = common dso_local global i32 0, align 4
@mmGDS_OA_VMID0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_init_compute_vmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_init_compute_vmid(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load i32, i32* @DEFAULT_SH_MEM_BASES, align 4
  %7 = load i32, i32* @DEFAULT_SH_MEM_BASES, align 4
  %8 = shl i32 %7, 16
  %9 = or i32 %6, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @SH_MEM_ADDRESS_MODE_64, align 4
  %11 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %12 = load i32, i32* @SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @FIRST_COMPUTE_VMID, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %35, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @LAST_COMPUTE_VMID, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %24, i32 0, i32 0, i32 0, i32 %25)
  %27 = load i32, i32* @GC, align 4
  %28 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @WREG32_SOC15_RLC(i32 %27, i32 0, i32 %28, i32 %29)
  %31 = load i32, i32* @GC, align 4
  %32 = load i32, i32* @mmSH_MEM_BASES, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @WREG32_SOC15_RLC(i32 %31, i32 0, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %39, i32 0, i32 0, i32 0, i32 0)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @FIRST_COMPUTE_VMID, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %68, %38
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @LAST_COMPUTE_VMID, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load i32, i32* @GC, align 4
  %51 = load i32, i32* @mmGDS_VMID0_BASE, align 4
  %52 = load i32, i32* %3, align 4
  %53 = mul nsw i32 2, %52
  %54 = call i32 @WREG32_SOC15_OFFSET(i32 %50, i32 0, i32 %51, i32 %53, i32 0)
  %55 = load i32, i32* @GC, align 4
  %56 = load i32, i32* @mmGDS_VMID0_SIZE, align 4
  %57 = load i32, i32* %3, align 4
  %58 = mul nsw i32 2, %57
  %59 = call i32 @WREG32_SOC15_OFFSET(i32 %55, i32 0, i32 %56, i32 %58, i32 0)
  %60 = load i32, i32* @GC, align 4
  %61 = load i32, i32* @mmGDS_GWS_VMID0, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @WREG32_SOC15_OFFSET(i32 %60, i32 0, i32 %61, i32 %62, i32 0)
  %64 = load i32, i32* @GC, align 4
  %65 = load i32, i32* @mmGDS_OA_VMID0, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @WREG32_SOC15_OFFSET(i32 %64, i32 0, i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %45

71:                                               ; preds = %45
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc15_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_RLC(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

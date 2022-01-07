; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_compute_vmid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_compute_vmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@DEFAULT_SH_MEM_BASES = common dso_local global i32 0, align 4
@FIRST_COMPUTE_VMID = common dso_local global i32 0, align 4
@LAST_COMPUTE_VMID = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4
@DEFAULT_SH_MEM_CONFIG = common dso_local global i32 0, align 4
@mmSH_MEM_BASES = common dso_local global i32 0, align 4
@mmGDS_VMID0_BASE = common dso_local global i32 0, align 4
@mmGDS_VMID0_SIZE = common dso_local global i32 0, align 4
@mmGDS_GWS_VMID0 = common dso_local global i32 0, align 4
@mmGDS_OA_VMID0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v10_0_init_compute_vmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_init_compute_vmid(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @DEFAULT_SH_MEM_BASES, align 4
  %6 = load i32, i32* @DEFAULT_SH_MEM_BASES, align 4
  %7 = shl i32 %6, 16
  %8 = or i32 %5, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @FIRST_COMPUTE_VMID, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @LAST_COMPUTE_VMID, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @nv_grbm_select(%struct.amdgpu_device* %18, i32 0, i32 0, i32 0, i32 %19)
  %21 = load i32, i32* @GC, align 4
  %22 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %23 = load i32, i32* @DEFAULT_SH_MEM_CONFIG, align 4
  %24 = call i32 @WREG32_SOC15(i32 %21, i32 0, i32 %22, i32 %23)
  %25 = load i32, i32* @GC, align 4
  %26 = load i32, i32* @mmSH_MEM_BASES, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @WREG32_SOC15(i32 %25, i32 0, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = call i32 @nv_grbm_select(%struct.amdgpu_device* %33, i32 0, i32 0, i32 0, i32 0)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* @FIRST_COMPUTE_VMID, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %62, %32
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @LAST_COMPUTE_VMID, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32, i32* @GC, align 4
  %45 = load i32, i32* @mmGDS_VMID0_BASE, align 4
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 2, %46
  %48 = call i32 @WREG32_SOC15_OFFSET(i32 %44, i32 0, i32 %45, i32 %47, i32 0)
  %49 = load i32, i32* @GC, align 4
  %50 = load i32, i32* @mmGDS_VMID0_SIZE, align 4
  %51 = load i32, i32* %3, align 4
  %52 = mul nsw i32 2, %51
  %53 = call i32 @WREG32_SOC15_OFFSET(i32 %49, i32 0, i32 %50, i32 %52, i32 0)
  %54 = load i32, i32* @GC, align 4
  %55 = load i32, i32* @mmGDS_GWS_VMID0, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @WREG32_SOC15_OFFSET(i32 %54, i32 0, i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* @GC, align 4
  %59 = load i32, i32* @mmGDS_OA_VMID0, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @WREG32_SOC15_OFFSET(i32 %58, i32 0, i32 %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %39

65:                                               ; preds = %39
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nv_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

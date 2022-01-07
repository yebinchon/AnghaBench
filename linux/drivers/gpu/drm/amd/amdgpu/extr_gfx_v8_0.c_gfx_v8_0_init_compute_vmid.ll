; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_compute_vmid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_compute_vmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { i32 }

@DEFAULT_SH_MEM_BASES = common dso_local global i32 0, align 4
@SH_MEM_ADDRESS_MODE_HSA64 = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__ADDRESS_MODE__SHIFT = common dso_local global i32 0, align 4
@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT = common dso_local global i32 0, align 4
@MTYPE_CC = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__PRIVATE_ATC_MASK = common dso_local global i32 0, align 4
@FIRST_COMPUTE_VMID = common dso_local global i32 0, align 4
@LAST_COMPUTE_VMID = common dso_local global i32 0, align 4
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4
@mmSH_MEM_APE1_BASE = common dso_local global i32 0, align 4
@mmSH_MEM_APE1_LIMIT = common dso_local global i32 0, align 4
@mmSH_MEM_BASES = common dso_local global i32 0, align 4
@amdgpu_gds_reg_offset = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v8_0_init_compute_vmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_init_compute_vmid(%struct.amdgpu_device* %0) #0 {
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
  %10 = load i32, i32* @SH_MEM_ADDRESS_MODE_HSA64, align 4
  %11 = load i32, i32* @SH_MEM_CONFIG__ADDRESS_MODE__SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %14 = load i32, i32* @SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* @MTYPE_CC, align 4
  %18 = load i32, i32* @SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* @SH_MEM_CONFIG__PRIVATE_ATC_MASK, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* @FIRST_COMPUTE_VMID, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %45, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @LAST_COMPUTE_VMID, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @vi_srbm_select(%struct.amdgpu_device* %32, i32 0, i32 0, i32 0, i32 %33)
  %35 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  %38 = load i32, i32* @mmSH_MEM_APE1_BASE, align 4
  %39 = call i32 @WREG32(i32 %38, i32 1)
  %40 = load i32, i32* @mmSH_MEM_APE1_LIMIT, align 4
  %41 = call i32 @WREG32(i32 %40, i32 0)
  %42 = load i32, i32* @mmSH_MEM_BASES, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @WREG32(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = call i32 @vi_srbm_select(%struct.amdgpu_device* %49, i32 0, i32 0, i32 0, i32 0)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* @FIRST_COMPUTE_VMID, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %88, %48
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @LAST_COMPUTE_VMID, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @WREG32(i32 %65, i32 0)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @WREG32(i32 %72, i32 0)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @WREG32(i32 %79, i32 0)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @WREG32(i32 %86, i32 0)
  br label %88

88:                                               ; preds = %59
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %55

91:                                               ; preds = %55
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vi_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

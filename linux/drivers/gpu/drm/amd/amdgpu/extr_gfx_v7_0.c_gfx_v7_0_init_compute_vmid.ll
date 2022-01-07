; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_init_compute_vmid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_init_compute_vmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { i32 }

@DEFAULT_SH_MEM_BASES = common dso_local global i32 0, align 4
@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT = common dso_local global i32 0, align 4
@MTYPE_NONCACHED = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT = common dso_local global i32 0, align 4
@FIRST_COMPUTE_VMID = common dso_local global i32 0, align 4
@LAST_COMPUTE_VMID = common dso_local global i32 0, align 4
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4
@mmSH_MEM_APE1_BASE = common dso_local global i32 0, align 4
@mmSH_MEM_APE1_LIMIT = common dso_local global i32 0, align 4
@mmSH_MEM_BASES = common dso_local global i32 0, align 4
@amdgpu_gds_reg_offset = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v7_0_init_compute_vmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_init_compute_vmid(%struct.amdgpu_device* %0) #0 {
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
  %10 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %11 = load i32, i32* @SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @MTYPE_NONCACHED, align 4
  %14 = load i32, i32* @SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @FIRST_COMPUTE_VMID, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %40, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @LAST_COMPUTE_VMID, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @cik_srbm_select(%struct.amdgpu_device* %27, i32 0, i32 0, i32 0, i32 %28)
  %30 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  %33 = load i32, i32* @mmSH_MEM_APE1_BASE, align 4
  %34 = call i32 @WREG32(i32 %33, i32 1)
  %35 = load i32, i32* @mmSH_MEM_APE1_LIMIT, align 4
  %36 = call i32 @WREG32(i32 %35, i32 0)
  %37 = load i32, i32* @mmSH_MEM_BASES, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @WREG32(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %22

43:                                               ; preds = %22
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = call i32 @cik_srbm_select(%struct.amdgpu_device* %44, i32 0, i32 0, i32 0, i32 0)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* @FIRST_COMPUTE_VMID, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %83, %43
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @LAST_COMPUTE_VMID, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %50
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @WREG32(i32 %60, i32 0)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @WREG32(i32 %67, i32 0)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @WREG32(i32 %74, i32 0)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @WREG32(i32 %81, i32 0)
  br label %83

83:                                               ; preds = %54
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %50

86:                                               ; preds = %50
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cik_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

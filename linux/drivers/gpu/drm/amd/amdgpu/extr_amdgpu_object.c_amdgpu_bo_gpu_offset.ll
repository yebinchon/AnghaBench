; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_gpu_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_gpu_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@ttm_bo_type_kernel = common dso_local global i64 0, align 8
@AMDGPU_BO_INVALID_OFFSET = common dso_local global i64 0, align 8
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %0) #0 {
  %2 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %2, align 8
  %3 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dma_resv_is_locked(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ttm_bo_type_kernel, align 8
  %30 = icmp ne i64 %28, %29
  br label %31

31:                                               ; preds = %24, %19, %1
  %32 = phi i1 [ false, %19 ], [ false, %1 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AMDGPU_BO_INVALID_OFFSET, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON_ONCE(i32 %42)
  %44 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TTM_PL_VRAM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %31
  %52 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %51, %31
  %60 = phi i1 [ false, %31 ], [ %58, %51 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON_ONCE(i32 %61)
  %63 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @amdgpu_gmc_sign_extend(i32 %66)
  ret i32 %67
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dma_resv_is_locked(i32) #1

declare dso_local i32 @amdgpu_gmc_sign_extend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

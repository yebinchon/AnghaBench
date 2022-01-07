; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_ring_get_rptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_ring_get_rptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AMDGPU_VCE_HARVEST_VCE1 = common dso_local global i64 0, align 8
@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@AMDGPU_VCE_HARVEST_VCE0 = common dso_local global i64 0, align 8
@mmVCE_RB_RPTR = common dso_local global i32 0, align 4
@mmVCE_RB_RPTR2 = common dso_local global i32 0, align 4
@mmVCE_RB_RPTR3 = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @vce_v3_0_ring_get_rptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_ring_get_rptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AMDGPU_VCE_HARVEST_VCE1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %25 = call i32 @GET_VCE_INSTANCE(i32 0)
  %26 = call i32 @WREG32(i32 %24, i32 %25)
  br label %39

27:                                               ; preds = %16
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AMDGPU_VCE_HARVEST_VCE0, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %36 = call i32 @GET_VCE_INSTANCE(i32 1)
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @mmVCE_RB_RPTR, align 4
  %46 = call i32 @RREG32(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @mmVCE_RB_RPTR2, align 4
  %54 = call i32 @RREG32(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @mmVCE_RB_RPTR3, align 4
  %57 = call i32 @RREG32(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %61 = load i32, i32* @mmGRBM_GFX_INDEX_DEFAULT, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GET_VCE_INSTANCE(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

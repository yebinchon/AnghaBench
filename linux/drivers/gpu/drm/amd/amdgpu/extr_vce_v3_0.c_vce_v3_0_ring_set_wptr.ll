; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AMDGPU_VCE_HARVEST_VCE1 = common dso_local global i64 0, align 8
@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@AMDGPU_VCE_HARVEST_VCE0 = common dso_local global i64 0, align 8
@mmVCE_RB_WPTR = common dso_local global i32 0, align 4
@mmVCE_RB_WPTR2 = common dso_local global i32 0, align 4
@mmVCE_RB_WPTR3 = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @vce_v3_0_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v3_0_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 2
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AMDGPU_VCE_HARVEST_VCE1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15, %1
  %23 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %24 = call i32 @GET_VCE_INSTANCE(i32 0)
  %25 = call i32 @WREG32(i32 %23, i32 %24)
  br label %38

26:                                               ; preds = %15
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AMDGPU_VCE_HARVEST_VCE0, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %35 = call i32 @GET_VCE_INSTANCE(i32 1)
  %36 = call i32 @WREG32(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %26
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @mmVCE_RB_WPTR, align 4
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lower_32_bits(i32 %47)
  %49 = call i32 @WREG32(i32 %44, i32 %48)
  br label %70

50:                                               ; preds = %38
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* @mmVCE_RB_WPTR2, align 4
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @lower_32_bits(i32 %59)
  %61 = call i32 @WREG32(i32 %56, i32 %60)
  br label %69

62:                                               ; preds = %50
  %63 = load i32, i32* @mmVCE_RB_WPTR3, align 4
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lower_32_bits(i32 %66)
  %68 = call i32 @WREG32(i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %72 = load i32, i32* @mmGRBM_GFX_INDEX_DEFAULT, align 4
  %73 = call i32 @WREG32(i32 %71, i32 %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GET_VCE_INSTANCE(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

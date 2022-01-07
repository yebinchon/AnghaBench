; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_invalidate_tlbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_gfx_v9_invalidate_tlbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i64, i32, %struct.TYPE_9__, i64, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@CHIP_VEGA20 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgd_gfx_v9_invalidate_tlbs(%struct.kgd_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_ring*, align 8
  %10 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %12 = bitcast %struct.kgd_dev* %11 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.amdgpu_ring* %16, %struct.amdgpu_ring** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %93

24:                                               ; preds = %2
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHIP_VEGA20, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 2, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %31, %24
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @invalidate_tlbs_with_kiq(%struct.amdgpu_device* %45, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %93

49:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %89, %49
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %92

53:                                               ; preds = %50
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %89

59:                                               ; preds = %53
  %60 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @kgd_gfx_v9_get_atc_vmid_pasid_mapping_valid(%struct.kgd_dev* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @kgd_gfx_v9_get_atc_vmid_pasid_mapping_pasid(%struct.kgd_dev* %65, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @amdgpu_gmc_flush_gpu_tlb(%struct.amdgpu_device* %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %71

86:                                               ; preds = %71
  br label %92

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %50

92:                                               ; preds = %86, %50
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %44, %21
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @invalidate_tlbs_with_kiq(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @kgd_gfx_v9_get_atc_vmid_pasid_mapping_valid(%struct.kgd_dev*, i32) #1

declare dso_local i32 @kgd_gfx_v9_get_atc_vmid_pasid_mapping_pasid(%struct.kgd_dev*, i32) #1

declare dso_local i32 @amdgpu_gmc_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

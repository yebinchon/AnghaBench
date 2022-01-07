; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_invalidate_tlbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_invalidate_tlbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@amdgpu_emu_mode = common dso_local global i64 0, align 8
@AMDGPU_GFXHUB_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i32)* @invalidate_tlbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_tlbs(%struct.kgd_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ring*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %10 = bitcast %struct.kgd_dev* %9 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.amdgpu_ring* %14, %struct.amdgpu_ring** %8, align 8
  %15 = load i64, i64* @amdgpu_emu_mode, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @invalidate_tlbs_with_kiq(%struct.amdgpu_device* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %17, %2
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %55, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %55

37:                                               ; preds = %31
  %38 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @get_atc_vmid_pasid_mapping_valid(%struct.kgd_dev* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @get_atc_vmid_pasid_mapping_pasid(%struct.kgd_dev* %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AMDGPU_GFXHUB_0, align 4
  %52 = call i32 @amdgpu_gmc_flush_gpu_tlb(%struct.amdgpu_device* %49, i32 %50, i32 %51, i32 0)
  br label %58

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %37
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %28

58:                                               ; preds = %48, %28
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @invalidate_tlbs_with_kiq(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @get_atc_vmid_pasid_mapping_valid(%struct.kgd_dev*, i32) #1

declare dso_local i32 @get_atc_vmid_pasid_mapping_pasid(%struct.kgd_dev*, i32) #1

declare dso_local i32 @amdgpu_gmc_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

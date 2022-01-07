; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v8.c_invalidate_tlbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v8.c_invalidate_tlbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i64 }

@EIO = common dso_local global i32 0, align 4
@mmATC_VMID0_PASID_MAPPING = common dso_local global i64 0, align 8
@ATC_VMID0_PASID_MAPPING__VALID_MASK = common dso_local global i32 0, align 4
@ATC_VMID0_PASID_MAPPING__PASID_MASK = common dso_local global i32 0, align 4
@mmVM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@mmVM_INVALIDATE_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i32)* @invalidate_tlbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_tlbs(%struct.kgd_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %10 = bitcast %struct.kgd_dev* %9 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %52

28:                                               ; preds = %22
  %29 = load i64, i64* @mmATC_VMID0_PASID_MAPPING, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @RREG32(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ATC_VMID0_PASID_MAPPING__VALID_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ATC_VMID0_PASID_MAPPING__PASID_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @mmVM_INVALIDATE_REQUEST, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 1, %46
  %48 = call i32 @WREG32(i32 %45, i32 %47)
  %49 = load i64, i64* @mmVM_INVALIDATE_RESPONSE, align 8
  %50 = call i32 @RREG32(i64 %49)
  br label %55

51:                                               ; preds = %38, %28
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %19

55:                                               ; preds = %44, %19
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

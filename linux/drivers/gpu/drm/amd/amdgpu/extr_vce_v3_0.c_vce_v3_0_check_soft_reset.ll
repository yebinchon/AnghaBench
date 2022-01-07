; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@mmVCE_STATUS = common dso_local global i32 0, align 4
@AMDGPU_VCE_STATUS_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_VCE0 = common dso_local global i32 0, align 4
@SOFT_RESET_VCE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vce_v3_0_check_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_check_soft_reset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %12 = call i32 @GET_VCE_INSTANCE(i32 0)
  %13 = call i32 @WREG32(i32 %11, i32 %12)
  %14 = load i32, i32* @mmVCE_STATUS, align 4
  %15 = call i32 @RREG32(i32 %14)
  %16 = load i32, i32* @AMDGPU_VCE_STATUS_BUSY_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %22 = load i32, i32* @SOFT_RESET_VCE0, align 4
  %23 = call i64 @REG_SET_FIELD(i64 %20, i32 %21, i32 %22, i32 1)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %26 = load i32, i32* @SOFT_RESET_VCE1, align 4
  %27 = call i64 @REG_SET_FIELD(i64 %24, i32 %25, i32 %26, i32 1)
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %19, %1
  %29 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %30 = call i32 @GET_VCE_INSTANCE(i32 1)
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  %32 = load i32, i32* @mmVCE_STATUS, align 4
  %33 = call i32 @RREG32(i32 %32)
  %34 = load i32, i32* @AMDGPU_VCE_STATUS_BUSY_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %40 = load i32, i32* @SOFT_RESET_VCE0, align 4
  %41 = call i64 @REG_SET_FIELD(i64 %38, i32 %39, i32 %40, i32 1)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %44 = load i32, i32* @SOFT_RESET_VCE1, align 4
  %45 = call i64 @REG_SET_FIELD(i64 %42, i32 %43, i32 %44, i32 1)
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %37, %28
  %47 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %48 = call i32 @GET_VCE_INSTANCE(i32 0)
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  store i32 1, i32* %2, align 4
  br label %64

60:                                               ; preds = %46
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GET_VCE_INSTANCE(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

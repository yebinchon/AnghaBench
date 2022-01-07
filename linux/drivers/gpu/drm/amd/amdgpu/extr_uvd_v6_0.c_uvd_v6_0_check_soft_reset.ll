; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@mmSRBM_STATUS = common dso_local global i32 0, align 4
@SRBM_STATUS = common dso_local global i32 0, align 4
@UVD_RQ_PENDING = common dso_local global i32 0, align 4
@UVD_BUSY = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@AMDGPU_UVD_STATUS_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_UVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v6_0_check_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v6_0_check_soft_reset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @mmSRBM_STATUS, align 4
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SRBM_STATUS, align 4
  %13 = load i32, i32* @UVD_RQ_PENDING, align 4
  %14 = call i64 @REG_GET_FIELD(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SRBM_STATUS, align 4
  %19 = load i32, i32* @UVD_BUSY, align 4
  %20 = call i64 @REG_GET_FIELD(i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @mmUVD_STATUS, align 4
  %24 = call i32 @RREG32(i32 %23)
  %25 = load i32, i32* @AMDGPU_UVD_STATUS_BUSY_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %16, %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %31 = load i32, i32* @SOFT_RESET_UVD, align 4
  %32 = call i32 @REG_SET_FIELD(i32 %29, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  store i32 1, i32* %2, align 4
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

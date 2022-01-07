; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@mmSRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v6_0_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v6_0_soft_reset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %17
  %27 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %28 = call i64 @RREG32(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @dev_info(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @WREG32(i32 %37, i64 %38)
  %40 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %41 = call i64 @RREG32(i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = call i32 @udelay(i32 50)
  %43 = load i64, i64* %5, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %6, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %6, align 8
  %47 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @WREG32(i32 %47, i64 %48)
  %50 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %51 = call i64 @RREG32(i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = call i32 @udelay(i32 50)
  br label %53

53:                                               ; preds = %26, %17
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

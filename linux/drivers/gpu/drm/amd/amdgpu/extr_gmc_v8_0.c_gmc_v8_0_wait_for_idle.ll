; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_wait_for_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_wait_for_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmSRBM_STATUS = common dso_local global i32 0, align 4
@SRBM_STATUS__MCB_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCC_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCD_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__VMC_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__VMC1_BUSY_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gmc_v8_0_wait_for_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_wait_for_idle(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load i32, i32* @mmSRBM_STATUS, align 4
  %17 = call i32 @RREG32(i32 %16)
  %18 = load i32, i32* @SRBM_STATUS__MCB_BUSY_MASK, align 4
  %19 = load i32, i32* @SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SRBM_STATUS__MCC_BUSY_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SRBM_STATUS__MCD_BUSY_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SRBM_STATUS__VMC_BUSY_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SRBM_STATUS__VMC1_BUSY_MASK, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %17, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %41

33:                                               ; preds = %15
  %34 = call i32 @udelay(i32 1)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

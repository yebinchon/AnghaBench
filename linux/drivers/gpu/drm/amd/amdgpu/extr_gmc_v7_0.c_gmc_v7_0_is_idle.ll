; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_is_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmSRBM_STATUS = common dso_local global i32 0, align 4
@SRBM_STATUS__MCB_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCC_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCD_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__VMC_BUSY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gmc_v7_0_is_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v7_0_is_idle(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load i32, i32* @mmSRBM_STATUS, align 4
  %9 = call i32 @RREG32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SRBM_STATUS__MCB_BUSY_MASK, align 4
  %12 = load i32, i32* @SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SRBM_STATUS__MCC_BUSY_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SRBM_STATUS__MCD_BUSY_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SRBM_STATUS__VMC_BUSY_MASK, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %10, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmMC_SHARED_BLACKOUT_CNTL = common dso_local global i32 0, align 4
@MC_SHARED_BLACKOUT_CNTL = common dso_local global i32 0, align 4
@BLACKOUT_MODE = common dso_local global i32 0, align 4
@BIF_FB_EN = common dso_local global i32 0, align 4
@FB_READ_EN = common dso_local global i32 0, align 4
@FB_WRITE_EN = common dso_local global i32 0, align 4
@mmBIF_FB_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gmc_v7_0_mc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v7_0_mc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @mmMC_SHARED_BLACKOUT_CNTL, align 4
  %5 = call i64 @RREG32(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @MC_SHARED_BLACKOUT_CNTL, align 4
  %8 = load i32, i32* @BLACKOUT_MODE, align 4
  %9 = call i64 @REG_SET_FIELD(i64 %6, i32 %7, i32 %8, i32 0)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @mmMC_SHARED_BLACKOUT_CNTL, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @WREG32(i32 %10, i64 %11)
  %13 = load i32, i32* @BIF_FB_EN, align 4
  %14 = load i32, i32* @FB_READ_EN, align 4
  %15 = call i64 @REG_SET_FIELD(i64 0, i32 %13, i32 %14, i32 1)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @BIF_FB_EN, align 4
  %18 = load i32, i32* @FB_WRITE_EN, align 4
  %19 = call i64 @REG_SET_FIELD(i64 %16, i32 %17, i32 %18, i32 1)
  store i64 %19, i64* %3, align 8
  %20 = load i32, i32* @mmBIF_FB_EN, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @WREG32(i32 %20, i64 %21)
  ret void
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_setup_uvd_dpm_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_setup_uvd_dpm_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PM_TP = common dso_local global i32 0, align 4
@SMU_UVD_DPM_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @trinity_setup_uvd_dpm_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_setup_uvd_dpm_interval(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @PM_TP, align 4
  %11 = call i32 @RREG32_SMC(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call i32 @radeon_get_xclk(%struct.radeon_device* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @r600_calculate_u_and_p(i32 %14, i32 %15, i32 16, i32* %5, i32* %6)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @SMU_UVD_DPM_CNTL, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @WREG32_SMC(i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

declare dso_local i32 @r600_calculate_u_and_p(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

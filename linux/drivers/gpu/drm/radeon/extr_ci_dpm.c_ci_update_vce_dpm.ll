; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_update_vce_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_update_vce_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i64 }
%struct.ci_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RADEON_CG_BLOCK_VCE = common dso_local global i32 0, align 4
@DPM_TABLE_475 = common dso_local global i32 0, align 4
@VceBootLevel_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @ci_update_vce_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_update_vce_dpm(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.ci_power_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %10)
  store %struct.ci_power_info* %11, %struct.ci_power_info** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %13 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %3
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %26 = load i32, i32* @RADEON_CG_BLOCK_VCE, align 4
  %27 = call i32 @cik_update_cg(%struct.radeon_device* %25, i32 %26, i32 0)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %29 = call i32 @ci_get_vce_boot_level(%struct.radeon_device* %28)
  %30 = load %struct.ci_power_info*, %struct.ci_power_info** %7, align 8
  %31 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @DPM_TABLE_475, align 4
  %34 = call i32 @RREG32_SMC(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @VceBootLevel_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ci_power_info*, %struct.ci_power_info** %7, align 8
  %40 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @VceBootLevel(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @DPM_TABLE_475, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @WREG32_SMC(i32 %46, i32 %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = call i32 @ci_enable_vce_dpm(%struct.radeon_device* %49, i32 1)
  store i32 %50, i32* %8, align 4
  br label %57

51:                                               ; preds = %19
  %52 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %53 = load i32, i32* @RADEON_CG_BLOCK_VCE, align 4
  %54 = call i32 @cik_update_cg(%struct.radeon_device* %52, i32 %53, i32 1)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %56 = call i32 @ci_enable_vce_dpm(%struct.radeon_device* %55, i32 0)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %24
  br label %58

58:                                               ; preds = %57, %3
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @cik_update_cg(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ci_get_vce_boot_level(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @VceBootLevel(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @ci_enable_vce_dpm(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

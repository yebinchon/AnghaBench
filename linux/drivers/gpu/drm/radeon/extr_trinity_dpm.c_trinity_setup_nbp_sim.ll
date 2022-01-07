; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_setup_nbp_sim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_setup_nbp_sim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.trinity_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.trinity_ps = type { i32, i32, i32, i32 }

@NB_PSTATE_CONFIG = common dso_local global i32 0, align 4
@Dpm0PgNbPsLo_MASK = common dso_local global i32 0, align 4
@Dpm0PgNbPsHi_MASK = common dso_local global i32 0, align 4
@DpmXNbPsLo_MASK = common dso_local global i32 0, align 4
@DpmXNbPsHi_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @trinity_setup_nbp_sim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_setup_nbp_sim(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.trinity_power_info*, align 8
  %6 = alloca %struct.trinity_ps*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %8)
  store %struct.trinity_power_info* %9, %struct.trinity_power_info** %5, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %11 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %10)
  store %struct.trinity_ps* %11, %struct.trinity_ps** %6, align 8
  %12 = load %struct.trinity_power_info*, %struct.trinity_power_info** %5, align 8
  %13 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %2
  %18 = load i32, i32* @NB_PSTATE_CONFIG, align 4
  %19 = call i32 @RREG32_SMC(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @Dpm0PgNbPsLo_MASK, align 4
  %21 = load i32, i32* @Dpm0PgNbPsHi_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DpmXNbPsLo_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DpmXNbPsHi_MASK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %31 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Dpm0PgNbPsLo(i32 %32)
  %34 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %35 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @Dpm0PgNbPsHi(i32 %36)
  %38 = or i32 %33, %37
  %39 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %40 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DpmXNbPsLo(i32 %41)
  %43 = or i32 %38, %42
  %44 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %45 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DpmXNbPsHi(i32 %46)
  %48 = or i32 %43, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @NB_PSTATE_CONFIG, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @WREG32_SMC(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %17, %2
  ret void
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @Dpm0PgNbPsLo(i32) #1

declare dso_local i32 @Dpm0PgNbPsHi(i32) #1

declare dso_local i32 @DpmXNbPsLo(i32) #1

declare dso_local i32 @DpmXNbPsHi(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

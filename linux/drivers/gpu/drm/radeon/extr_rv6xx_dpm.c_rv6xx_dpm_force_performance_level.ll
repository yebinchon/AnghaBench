; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rv6xx_power_info = type { i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_LOW = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_HIGH = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_MEDIUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv6xx_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rv6xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %6)
  store %struct.rv6xx_power_info* %7, %struct.rv6xx_power_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %13 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %12, i32 0, i32 0
  store i32 3, i32* %13, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %20 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %19, i32 0, i32 0
  store i32 2, i32* %20, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %11
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @rv6xx_clear_vc(%struct.radeon_device* %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %30 = call i32 @r600_power_level_enable(%struct.radeon_device* %28, i32 %29, i32 1)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @r600_set_at(%struct.radeon_device* %31, i32 65535, i32 65535, i32 65535, i32 65535)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %35 = call i32 @r600_wait_for_power_level(%struct.radeon_device* %33, i32 %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %38 = call i32 @r600_power_level_enable(%struct.radeon_device* %36, i32 %37, i32 0)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %41 = call i32 @r600_power_level_enable(%struct.radeon_device* %39, i32 %40, i32 0)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @rv6xx_enable_medium(%struct.radeon_device* %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = call i32 @rv6xx_enable_high(%struct.radeon_device* %44)
  %46 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %47 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %54

50:                                               ; preds = %25
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %53 = call i32 @r600_power_level_enable(%struct.radeon_device* %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %25
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = call i32 @rv6xx_program_vc(%struct.radeon_device* %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = call i32 @rv6xx_program_at(%struct.radeon_device* %57)
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  ret i32 0
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @r600_power_level_enable(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_set_at(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i32 @r600_wait_for_power_level(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_enable_medium(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_high(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_vc(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_at(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_power_control_set_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_power_control_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_power_control_set_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_power_control_set_level(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %9, align 8
  store %struct.radeon_ps* %10, %struct.radeon_ps** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @si_restrict_performance_levels_before_switch(%struct.radeon_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @si_halt_smc(%struct.radeon_device* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %55

24:                                               ; preds = %17
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %27 = call i32 @si_populate_smc_tdp_limits(%struct.radeon_device* %25, %struct.radeon_ps* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %55

32:                                               ; preds = %24
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %35 = call i32 @si_populate_smc_tdp_limits_2(%struct.radeon_device* %33, %struct.radeon_ps* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %55

40:                                               ; preds = %32
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = call i32 @si_resume_smc(%struct.radeon_device* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = call i32 @si_set_sw_state(%struct.radeon_device* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %52, %45, %38, %30, %22, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @si_restrict_performance_levels_before_switch(%struct.radeon_device*) #1

declare dso_local i32 @si_halt_smc(%struct.radeon_device*) #1

declare dso_local i32 @si_populate_smc_tdp_limits(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_populate_smc_tdp_limits_2(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_resume_smc(%struct.radeon_device*) #1

declare dso_local i32 @si_set_sw_state(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_didt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_didt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i64, i64, i64, i64 }

@didt_config_ci = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @ci_enable_didt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_enable_didt(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ci_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %8)
  store %struct.ci_power_info* %9, %struct.ci_power_info** %6, align 8
  %10 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %11 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %16 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %21 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %24, %19, %14, %2
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = call i32 @cik_enter_rlc_safe_mode(%struct.radeon_device* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = load i32, i32* @didt_config_ci, align 4
  %37 = call i32 @ci_program_pt_config_registers(%struct.radeon_device* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %42 = call i32 @cik_exit_rlc_safe_mode(%struct.radeon_device* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %52

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ci_do_enable_didt(%struct.radeon_device* %46, i32 %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = call i32 @cik_exit_rlc_safe_mode(%struct.radeon_device* %49)
  br label %51

51:                                               ; preds = %45, %24
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @cik_enter_rlc_safe_mode(%struct.radeon_device*) #1

declare dso_local i32 @ci_program_pt_config_registers(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_exit_rlc_safe_mode(%struct.radeon_device*) #1

declare dso_local i32 @ci_do_enable_didt(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

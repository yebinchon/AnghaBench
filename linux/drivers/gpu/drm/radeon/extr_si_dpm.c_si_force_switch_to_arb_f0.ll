; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_force_switch_to_arb_f0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_force_switch_to_arb_f0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.si_power_info = type { i32, i32 }

@MC_CG_ARB_FREQ_F0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_force_switch_to_arb_f0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_force_switch_to_arb_f0(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.si_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %7)
  store %struct.si_power_info* %8, %struct.si_power_info** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %11 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %14 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @si_read_smc_sram_dword(%struct.radeon_device* %9, i32 %12, i32* %5, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 255
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MC_CG_ARB_FREQ_F0, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MC_CG_ARB_FREQ_F0, align 4
  %33 = call i32 @ni_copy_and_switch_arb_sets(%struct.radeon_device* %30, i32 %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %28, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_read_smc_sram_dword(%struct.radeon_device*, i32, i32*, i32) #1

declare dso_local i32 @ni_copy_and_switch_arb_sets(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

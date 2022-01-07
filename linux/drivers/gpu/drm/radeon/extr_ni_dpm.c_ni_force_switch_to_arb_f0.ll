; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_force_switch_to_arb_f0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_force_switch_to_arb_f0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32 }
%struct.ni_power_info = type { i32 }

@MC_CG_ARB_FREQ_F0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ni_force_switch_to_arb_f0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_force_switch_to_arb_f0(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.ni_power_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %10)
  store %struct.ni_power_info* %11, %struct.ni_power_info** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %14 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %17 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %12, i32 %15, i32* %6, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MC_CG_ARB_FREQ_F0, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %37

32:                                               ; preds = %24
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MC_CG_ARB_FREQ_F0, align 4
  %36 = call i32 @ni_copy_and_switch_arb_sets(%struct.radeon_device* %33, i32 %34, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %31, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_read_smc_sram_dword(%struct.radeon_device*, i32, i32*, i32) #1

declare dso_local i32 @ni_copy_and_switch_arb_sets(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

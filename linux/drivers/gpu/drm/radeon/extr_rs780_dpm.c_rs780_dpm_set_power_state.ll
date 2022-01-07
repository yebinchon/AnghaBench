; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_ps*, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.igp_power_info = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs780_dpm_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.igp_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device* %8)
  store %struct.igp_power_info* %9, %struct.igp_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %13, align 8
  store %struct.radeon_ps* %14, %struct.radeon_ps** %5, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %18, align 8
  store %struct.radeon_ps* %19, %struct.radeon_ps** %6, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @rs780_get_pm_mode_parameters(%struct.radeon_device* %20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %25 = call i32 @rs780_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %22, %struct.radeon_ps* %23, %struct.radeon_ps* %24)
  %26 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %27 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %33 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @rs780_force_voltage(%struct.radeon_device* %31, i32 %34)
  %36 = call i32 @mdelay(i32 5)
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %40 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %41 = call i32 @rs780_set_engine_clock_scaling(%struct.radeon_device* %38, %struct.radeon_ps* %39, %struct.radeon_ps* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %68

46:                                               ; preds = %37
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %49 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %50 = call i32 @rs780_set_engine_clock_spc(%struct.radeon_device* %47, %struct.radeon_ps* %48, %struct.radeon_ps* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %53 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %54 = call i32 @rs780_activate_engine_clk_scaling(%struct.radeon_device* %51, %struct.radeon_ps* %52, %struct.radeon_ps* %53)
  %55 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %56 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %62 = call i32 @rs780_enable_voltage_scaling(%struct.radeon_device* %60, %struct.radeon_ps* %61)
  br label %63

63:                                               ; preds = %59, %46
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %66 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %67 = call i32 @rs780_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %64, %struct.radeon_ps* %65, %struct.radeon_ps* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %44
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rs780_get_pm_mode_parameters(%struct.radeon_device*) #1

declare dso_local i32 @rs780_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rs780_force_voltage(%struct.radeon_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rs780_set_engine_clock_scaling(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rs780_set_engine_clock_spc(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rs780_activate_engine_clk_scaling(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rs780_enable_voltage_scaling(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rs780_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

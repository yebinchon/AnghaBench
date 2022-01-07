; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_display_configuration_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_display_configuration_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_power_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trinity_dpm_display_configuration_changed(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.trinity_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %4)
  store %struct.trinity_power_info* %5, %struct.trinity_power_info** %3, align 8
  %6 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %7 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @trinity_dce_enable_voltage_adjustment(%struct.radeon_device* %11, i32 1)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i32 @trinity_add_dccac_value(%struct.radeon_device* %14)
  ret void
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @trinity_dce_enable_voltage_adjustment(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_add_dccac_value(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

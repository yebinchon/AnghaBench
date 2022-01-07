; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_setup_asic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_setup_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_dpm_setup_asic(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call i32 @si_mc_load_microcode(%struct.radeon_device* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @rv770_get_memory_type(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = call i32 @si_read_clock_registers(%struct.radeon_device* %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @si_enable_acpi_power_management(%struct.radeon_device* %15)
  ret void
}

declare dso_local i32 @si_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @rv770_get_memory_type(%struct.radeon_device*) #1

declare dso_local i32 @si_read_clock_registers(%struct.radeon_device*) #1

declare dso_local i32 @si_enable_acpi_power_management(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

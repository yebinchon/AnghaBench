; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_initialize_hardware_cac_manager.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_initialize_hardware_cac_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ni_power_info = type { i32, i32 }
%struct.si_power_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_initialize_hardware_cac_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_initialize_hardware_cac_manager(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ni_power_info*, align 8
  %5 = alloca %struct.si_power_info*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %7)
  store %struct.ni_power_info* %8, %struct.ni_power_info** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %9)
  store %struct.si_power_info* %10, %struct.si_power_info** %5, align 8
  %11 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %12 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %17 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %52

21:                                               ; preds = %15
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %24 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @si_program_cac_config_registers(%struct.radeon_device* %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %21
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %34 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @si_program_cac_config_registers(%struct.radeon_device* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %52

41:                                               ; preds = %31
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %44 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @si_program_cac_config_registers(%struct.radeon_device* %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %49, %39, %29, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_program_cac_config_registers(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

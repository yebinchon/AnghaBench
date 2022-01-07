; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_setup_asic_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_setup_asic_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to read clock registers!\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to get memory type!\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to enable ACPI power management!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to init power gate state!\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to get MC microcode version!\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to init sclk threshold!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_setup_asic_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_setup_asic_task(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = call i32 @smu7_check_mc_firmware(%struct.pp_hwmgr* %5)
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = call i32 @smu7_read_clock_registers(%struct.pp_hwmgr* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 0, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %4, align 4
  %13 = call i32 @PP_ASSERT_WITH_CODE(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = call i32 @smu7_get_memory_type(%struct.pp_hwmgr* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 0, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %4, align 4
  %20 = call i32 @PP_ASSERT_WITH_CODE(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = call i32 @smu7_enable_acpi_power_management(%struct.pp_hwmgr* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 0, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  %27 = call i32 @PP_ASSERT_WITH_CODE(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %29 = call i32 @smu7_init_power_gate_state(%struct.pp_hwmgr* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 0, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %4, align 4
  %34 = call i32 @PP_ASSERT_WITH_CODE(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %36 = call i32 @smu7_get_mc_microcode_version(%struct.pp_hwmgr* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 0, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %4, align 4
  %41 = call i32 @PP_ASSERT_WITH_CODE(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %43 = call i32 @smu7_init_sclk_threshold(%struct.pp_hwmgr* %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 0, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %4, align 4
  %48 = call i32 @PP_ASSERT_WITH_CODE(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @smu7_check_mc_firmware(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_read_clock_registers(%struct.pp_hwmgr*) #1

declare dso_local i32 @PP_ASSERT_WITH_CODE(i32, i8*, i32) #1

declare dso_local i32 @smu7_get_memory_type(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_enable_acpi_power_management(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_init_power_gate_state(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_get_mc_microcode_version(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_init_sclk_threshold(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

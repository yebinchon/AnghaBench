; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@sdei_firmware_call = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"advertised but not implemented in platform firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to get SDEI version: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"SDEIv%d.%d (0x%x) detected in firmware.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Conflicting SDEI version detected.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sdei_entry_point = common dso_local global i32 0, align 4
@sdei_pm_nb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to register CPU PM notifier...\0A\00", align 1
@sdei_reboot_nb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to register reboot notifier...\0A\00", align 1
@CPUHP_AP_ARM_SDEI_STARTING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"SDEI\00", align 1
@sdei_cpuhp_up = common dso_local global i32 0, align 4
@sdei_cpuhp_down = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Failed to register CPU hotplug notifier...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdei_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdei_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call i32 @sdei_get_conduit(%struct.platform_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @sdei_firmware_call, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

12:                                               ; preds = %1
  %13 = call i32 @sdei_api_get_version(i32* %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 (...) @sdei_mark_interface_broken()
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %86

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SDEI_VERSION_MAJOR(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @SDEI_VERSION_MINOR(i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @SDEI_VERSION_VENDOR(i32 %34)
  %36 = trunc i64 %35 to i32
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @SDEI_VERSION_MAJOR(i32 %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 (...) @sdei_mark_interface_broken()
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %86

46:                                               ; preds = %28
  %47 = call i32 (...) @sdei_platform_reset()
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sdei_arch_get_entry_point(i32 %53)
  store i32 %54, i32* @sdei_entry_point, align 4
  %55 = load i32, i32* @sdei_entry_point, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = call i32 (...) @sdei_mark_interface_broken()
  store i32 0, i32* %2, align 4
  br label %86

59:                                               ; preds = %52
  %60 = call i32 @cpu_pm_register_notifier(i32* @sdei_pm_nb)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %83

65:                                               ; preds = %59
  %66 = call i32 @register_reboot_notifier(i32* @sdei_reboot_nb)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %81

71:                                               ; preds = %65
  %72 = load i32, i32* @CPUHP_AP_ARM_SDEI_STARTING, align 4
  %73 = call i32 @cpuhp_setup_state(i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* @sdei_cpuhp_up, i32* @sdei_cpuhp_down)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %79

78:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %86

79:                                               ; preds = %76
  %80 = call i32 @unregister_reboot_notifier(i32* @sdei_reboot_nb)
  br label %81

81:                                               ; preds = %79, %69
  %82 = call i32 @cpu_pm_unregister_notifier(i32* @sdei_pm_nb)
  br label %83

83:                                               ; preds = %81, %63
  %84 = call i32 (...) @sdei_mark_interface_broken()
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %78, %57, %50, %41, %23, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @sdei_get_conduit(%struct.platform_device*) #1

declare dso_local i32 @sdei_api_get_version(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sdei_mark_interface_broken(...) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @SDEI_VERSION_MAJOR(i32) #1

declare dso_local i64 @SDEI_VERSION_MINOR(i32) #1

declare dso_local i64 @SDEI_VERSION_VENDOR(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @sdei_platform_reset(...) #1

declare dso_local i32 @sdei_arch_get_entry_point(i32) #1

declare dso_local i32 @cpu_pm_register_notifier(i32*) #1

declare dso_local i32 @register_reboot_notifier(i32*) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32*, i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @cpu_pm_unregister_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_gpio_fan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_gpio_fan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.gpio_fan_data = type { i64, i32, i32, i64, i32, i32, i64, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gpio_fan_stop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"gpio_fan\00", align 1
@gpio_fan_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"gpio-fan\00", align 1
@gpio_fan_cool_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"GPIO fan initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_fan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_fan_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_fan_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %7, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.gpio_fan_data* @devm_kzalloc(%struct.device* %13, i32 56, i32 %14)
  store %struct.gpio_fan_data* %15, %struct.gpio_fan_data** %5, align 8
  %16 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %17 = icmp ne %struct.gpio_fan_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %116

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %24 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %23, i32 0, i32 8
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %26 = call i32 @gpio_fan_get_of_data(%struct.gpio_fan_data* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %116

31:                                               ; preds = %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.gpio_fan_data* %33)
  %35 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %36 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %35, i32 0, i32 7
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %39 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %31
  %43 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %44 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %49 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %54 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %116

60:                                               ; preds = %52
  %61 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %62 = call i32 @fan_ctrl_init(%struct.gpio_fan_data* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %116

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* @gpio_fan_stop, align 4
  %70 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %71 = call i32 @devm_add_action_or_reset(%struct.device* %68, i32 %69, %struct.gpio_fan_data* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %116

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %42, %31
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %80 = load i32, i32* @gpio_fan_groups, align 4
  %81 = call i32 @devm_hwmon_device_register_with_groups(%struct.device* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.gpio_fan_data* %79, i32 %80)
  %82 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %83 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %85 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %91 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %116

94:                                               ; preds = %77
  %95 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %96 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %101 = call i32 @fan_alarm_init(%struct.gpio_fan_data* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %116

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %94
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = load %struct.device_node*, %struct.device_node** %7, align 8
  %110 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %111 = call i32 @devm_thermal_of_cooling_device_register(%struct.device* %108, %struct.device_node* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.gpio_fan_data* %110, i32* @gpio_fan_cool_ops)
  %112 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %5, align 8
  %113 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = call i32 @dev_info(%struct.device* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %107, %104, %89, %74, %65, %57, %29, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.gpio_fan_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @gpio_fan_get_of_data(%struct.gpio_fan_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_fan_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fan_ctrl_init(%struct.gpio_fan_data*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.gpio_fan_data*) #1

declare dso_local i32 @devm_hwmon_device_register_with_groups(%struct.device*, i8*, %struct.gpio_fan_data*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @fan_alarm_init(%struct.gpio_fan_data*) #1

declare dso_local i32 @devm_thermal_of_cooling_device_register(%struct.device*, %struct.device_node*, i8*, %struct.gpio_fan_data*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

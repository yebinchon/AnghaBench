; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-davinci.c_davinci_gpio_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-davinci.c_davinci_gpio_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_gpio_platform_data = type { i8*, i8* }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ti,ngpio\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ti,davinci-gpio-unbanked\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Populating pdata from DT failed: err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.davinci_gpio_platform_data* (%struct.platform_device*)* @davinci_gpio_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.davinci_gpio_platform_data* @davinci_gpio_get_pdata(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.davinci_gpio_platform_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.davinci_gpio_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load i32, i32* @CONFIG_OF, align 4
  %13 = call i32 @IS_ENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.davinci_gpio_platform_data* @dev_get_platdata(%struct.TYPE_4__* %23)
  store %struct.davinci_gpio_platform_data* %24, %struct.davinci_gpio_platform_data** %2, align 8
  br label %58

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.davinci_gpio_platform_data* @devm_kzalloc(%struct.TYPE_4__* %27, i32 16, i32 %28)
  store %struct.davinci_gpio_platform_data* %29, %struct.davinci_gpio_platform_data** %5, align 8
  %30 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %5, align 8
  %31 = icmp ne %struct.davinci_gpio_platform_data* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store %struct.davinci_gpio_platform_data* null, %struct.davinci_gpio_platform_data** %2, align 8
  br label %58

33:                                               ; preds = %25
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %53

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %5, align 8
  %42 = getelementptr inbounds %struct.davinci_gpio_platform_data, %struct.davinci_gpio_platform_data* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i32 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %53

48:                                               ; preds = %39
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %5, align 8
  %51 = getelementptr inbounds %struct.davinci_gpio_platform_data, %struct.davinci_gpio_platform_data* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %5, align 8
  store %struct.davinci_gpio_platform_data* %52, %struct.davinci_gpio_platform_data** %2, align 8
  br label %58

53:                                               ; preds = %47, %38
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  store %struct.davinci_gpio_platform_data* null, %struct.davinci_gpio_platform_data** %2, align 8
  br label %58

58:                                               ; preds = %53, %48, %32, %21
  %59 = load %struct.davinci_gpio_platform_data*, %struct.davinci_gpio_platform_data** %2, align 8
  ret %struct.davinci_gpio_platform_data* %59
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.davinci_gpio_platform_data* @dev_get_platdata(%struct.TYPE_4__*) #1

declare dso_local %struct.davinci_gpio_platform_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

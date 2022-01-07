; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-janz-ttl.c_ttl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-janz-ttl.c_ttl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.janz_platform_data = type { i32 }
%struct.ttl_module = type { %struct.gpio_chip, i32, i32 }
%struct.gpio_chip = type { i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ttl_get_value = common dso_local global i32 0, align 4
@ttl_set_value = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to add GPIO chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ttl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.janz_platform_data*, align 8
  %5 = alloca %struct.ttl_module*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.janz_platform_data* @dev_get_platdata(i32* %9)
  store %struct.janz_platform_data* %10, %struct.janz_platform_data** %4, align 8
  %11 = load %struct.janz_platform_data*, %struct.janz_platform_data** %4, align 8
  %12 = icmp ne %struct.janz_platform_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %89

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ttl_module* @devm_kzalloc(i32* %21, i32 40, i32 %22)
  store %struct.ttl_module* %23, %struct.ttl_module** %5, align 8
  %24 = load %struct.ttl_module*, %struct.ttl_module** %5, align 8
  %25 = icmp ne %struct.ttl_module* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %89

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.ttl_module*, %struct.ttl_module** %5, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.ttl_module* %31)
  %33 = load %struct.ttl_module*, %struct.ttl_module** %5, align 8
  %34 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %36, i32 0)
  %38 = load %struct.ttl_module*, %struct.ttl_module** %5, align 8
  %39 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ttl_module*, %struct.ttl_module** %5, align 8
  %41 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.ttl_module*, %struct.ttl_module** %5, align 8
  %47 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %89

50:                                               ; preds = %29
  %51 = load %struct.ttl_module*, %struct.ttl_module** %5, align 8
  %52 = call i32 @ttl_setup_device(%struct.ttl_module* %51)
  %53 = load %struct.ttl_module*, %struct.ttl_module** %5, align 8
  %54 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %53, i32 0, i32 0
  store %struct.gpio_chip* %54, %struct.gpio_chip** %6, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %58 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %57, i32 0, i32 6
  store i32* %56, i32** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %63 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ttl_get_value, align 4
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %66 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @ttl_set_value, align 4
  %68 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %69 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %72 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %74 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %76 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %75, i32 0, i32 1
  store i32 20, i32* %76, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %80 = call i32 @devm_gpiochip_add_data(i32* %78, %struct.gpio_chip* %79, i32* null)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %50
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %83, %45, %26, %13
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.janz_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ttl_module* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ttl_module*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ttl_setup_device(%struct.ttl_module*) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.gpio_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

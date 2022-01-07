; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rpi_firmware = type { i32 }
%struct.rpi_exp_gpio = type { %struct.TYPE_2__, %struct.rpi_firmware* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.device_node*, i32, i32, %struct.device* }

@.str = private unnamed_addr constant [23 x i8] c"Missing firmware node\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@NUM_GPIO = common dso_local global i32 0, align 4
@rpi_exp_gpio_dir_in = common dso_local global i32 0, align 4
@rpi_exp_gpio_dir_out = common dso_local global i32 0, align 4
@rpi_exp_gpio_get_direction = common dso_local global i32 0, align 4
@rpi_exp_gpio_get = common dso_local global i32 0, align 4
@rpi_exp_gpio_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpi_exp_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_exp_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.rpi_firmware*, align 8
  %8 = alloca %struct.rpi_exp_gpio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.device_node* @of_get_parent(%struct.device_node* %14)
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %97

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call %struct.rpi_firmware* @rpi_firmware_get(%struct.device_node* %24)
  store %struct.rpi_firmware* %25, %struct.rpi_firmware** %7, align 8
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.rpi_firmware*, %struct.rpi_firmware** %7, align 8
  %29 = icmp ne %struct.rpi_firmware* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EPROBE_DEFER, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %97

33:                                               ; preds = %23
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.rpi_exp_gpio* @devm_kzalloc(%struct.device* %34, i32 64, i32 %35)
  store %struct.rpi_exp_gpio* %36, %struct.rpi_exp_gpio** %8, align 8
  %37 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %38 = icmp ne %struct.rpi_exp_gpio* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %97

42:                                               ; preds = %33
  %43 = load %struct.rpi_firmware*, %struct.rpi_firmware** %7, align 8
  %44 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %45 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %44, i32 0, i32 1
  store %struct.rpi_firmware* %43, %struct.rpi_firmware** %45, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %48 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 11
  store %struct.device* %46, %struct.device** %49, align 8
  %50 = load i32, i32* @MODULE_NAME, align 4
  %51 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %52 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 10
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @THIS_MODULE, align 4
  %55 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %56 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 9
  store i32 %54, i32* %57, align 8
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %60 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 8
  store %struct.device_node* %58, %struct.device_node** %61, align 8
  %62 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %63 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 8
  %65 = load i32, i32* @NUM_GPIO, align 4
  %66 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %67 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 7
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @rpi_exp_gpio_dir_in, align 4
  %70 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %71 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @rpi_exp_gpio_dir_out, align 4
  %74 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %75 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @rpi_exp_gpio_get_direction, align 4
  %78 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %79 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @rpi_exp_gpio_get, align 4
  %82 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %83 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @rpi_exp_gpio_set, align 4
  %86 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %87 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %90 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %94 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %93, i32 0, i32 0
  %95 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %96 = call i32 @devm_gpiochip_add_data(%struct.device* %92, %struct.TYPE_2__* %94, %struct.rpi_exp_gpio* %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %42, %39, %30, %18
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.rpi_firmware* @rpi_firmware_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.rpi_exp_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_2__*, %struct.rpi_exp_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

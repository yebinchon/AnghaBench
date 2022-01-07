; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-creg-snps.c_creg_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-creg-snps.c_creg_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i32 }
%struct.creg_gpio = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@creg_gpio_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@creg_gpio_set = common dso_local global i32 0, align 4
@creg_gpio_dir_out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"GPIO controller with %d gpios probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @creg_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creg_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.creg_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.creg_gpio* @devm_kzalloc(%struct.device* %11, i32 36, i32 %12)
  store %struct.creg_gpio* %13, %struct.creg_gpio** %6, align 8
  %14 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %15 = icmp ne %struct.creg_gpio* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %114

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0)
  %22 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %23 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %25 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %31 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %114

34:                                               ; preds = %19
  %35 = load i32, i32* @creg_gpio_ids, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.of_device_id* @of_match_node(i32 %35, i32 %39)
  store %struct.of_device_id* %40, %struct.of_device_id** %4, align 8
  %41 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %42 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %45 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %47 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %114

53:                                               ; preds = %34
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @of_property_read_u32(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %114

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @creg_gpio_validate(%struct.device* %63, %struct.creg_gpio* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %114

71:                                               ; preds = %62
  %72 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %73 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %72, i32 0, i32 1
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 @dev_name(%struct.device* %75)
  %77 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %78 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  store i32 %76, i32* %79, align 4
  %80 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %81 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %85 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @creg_gpio_set, align 4
  %88 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %89 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @creg_gpio_dir_out, align 4
  %92 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %93 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %99 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %103 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %102, i32 0, i32 0
  %104 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %105 = call i32 @devm_gpiochip_add_data(%struct.device* %101, %struct.TYPE_2__* %103, %struct.creg_gpio* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %71
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %114

110:                                              ; preds = %71
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dev_info(%struct.device* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %108, %69, %60, %50, %29, %16
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.creg_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @creg_gpio_validate(%struct.device*, %struct.creg_gpio*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_2__*, %struct.creg_gpio*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

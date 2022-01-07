; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene.c_xgene_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene.c_xgene_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.xgene_gpio = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XGENE_MAX_GPIOS = common dso_local global i32 0, align 4
@xgene_gpio_get_direction = common dso_local global i32 0, align 4
@xgene_gpio_dir_in = common dso_local global i32 0, align 4
@xgene_gpio_dir_out = common dso_local global i32 0, align 4
@xgene_gpio_get = common dso_local global i32 0, align 4
@xgene_gpio_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to register gpiochip.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"X-Gene GPIO driver registered.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"X-Gene GPIO driver registration failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.xgene_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xgene_gpio* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.xgene_gpio* %10, %struct.xgene_gpio** %5, align 8
  %11 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %12 = icmp ne %struct.xgene_gpio* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %104

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %4, align 8
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %104

25:                                               ; preds = %16
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = call i32 @resource_size(%struct.resource* %31)
  %33 = call i32 @devm_ioremap_nocache(i32* %27, i32 %30, i32 %32)
  %34 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %35 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %37 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %104

43:                                               ; preds = %25
  %44 = load i32, i32* @XGENE_MAX_GPIOS, align 4
  %45 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %46 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 8
  store i32 %44, i32* %47, align 8
  %48 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %49 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %48, i32 0, i32 1
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %54 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  store i32* %52, i32** %55, align 8
  %56 = load i32, i32* @xgene_gpio_get_direction, align 4
  %57 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %58 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 6
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @xgene_gpio_dir_in, align 4
  %61 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %62 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @xgene_gpio_dir_out, align 4
  %65 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %66 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @xgene_gpio_get, align 4
  %69 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %70 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @xgene_gpio_set, align 4
  %73 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %74 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_name(i32* %77)
  %79 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %80 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %83 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.xgene_gpio* %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.xgene_gpio, %struct.xgene_gpio* %90, i32 0, i32 0
  %92 = load %struct.xgene_gpio*, %struct.xgene_gpio** %5, align 8
  %93 = call i32 @devm_gpiochip_add_data(i32* %89, %struct.TYPE_2__* %91, %struct.xgene_gpio* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %43
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %104

100:                                              ; preds = %43
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_info(i32* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %109

104:                                              ; preds = %96, %40, %22, %13
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.xgene_gpio* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_nocache(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xgene_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.TYPE_2__*, %struct.xgene_gpio*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rdc321x.c_rdc321x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rdc321x.c_rdc321x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i64 }
%struct.rdc321x_gpio = type { %struct.TYPE_2__, i32*, i64, i32, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i8*, i32, i64, i32, i32, i32, i32, i32 }
%struct.rdc321x_gpio_pdata = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"gpio-reg1\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get gpio-reg1 resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gpio-reg2\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to get gpio-reg2 resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rdc321x-gpio\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@rdc_gpio_direction_input = common dso_local global i32 0, align 4
@rdc_gpio_config = common dso_local global i32 0, align 4
@rdc_gpio_get_value = common dso_local global i32 0, align 4
@rdc_gpio_set_value = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"registering %d GPIOs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rdc321x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdc321x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.rdc321x_gpio*, align 8
  %7 = alloca %struct.rdc321x_gpio_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.rdc321x_gpio_pdata* @dev_get_platdata(i32* %9)
  store %struct.rdc321x_gpio_pdata* %10, %struct.rdc321x_gpio_pdata** %7, align 8
  %11 = load %struct.rdc321x_gpio_pdata*, %struct.rdc321x_gpio_pdata** %7, align 8
  %12 = icmp ne %struct.rdc321x_gpio_pdata* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %164

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.rdc321x_gpio* @devm_kzalloc(i32* %21, i32 104, i32 %22)
  store %struct.rdc321x_gpio* %23, %struct.rdc321x_gpio** %6, align 8
  %24 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %25 = icmp ne %struct.rdc321x_gpio* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %164

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_IO, align 4
  %32 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %30, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %32, %struct.resource** %5, align 8
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %164

41:                                               ; preds = %29
  %42 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %43 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %42, i32 0, i32 7
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.rdc321x_gpio_pdata*, %struct.rdc321x_gpio_pdata** %7, align 8
  %46 = getelementptr inbounds %struct.rdc321x_gpio_pdata, %struct.rdc321x_gpio_pdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %49 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %54 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %53, i32 0, i32 6
  store i64 %52, i64* %54, align 8
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 4
  %59 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load i32, i32* @IORESOURCE_IO, align 4
  %63 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %61, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %63, %struct.resource** %5, align 8
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = icmp ne %struct.resource* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %41
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %164

72:                                               ; preds = %41
  %73 = load %struct.resource*, %struct.resource** %5, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %77 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %76, i32 0, i32 5
  store i64 %75, i64* %77, align 8
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 4
  %82 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %83 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %85 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %86, align 8
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %89 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 7
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @rdc_gpio_direction_input, align 4
  %92 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %93 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 6
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @rdc_gpio_config, align 4
  %96 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %97 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @rdc_gpio_get_value, align 4
  %100 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %101 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @rdc_gpio_set_value, align 4
  %104 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %105 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 8
  %107 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %108 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load %struct.rdc321x_gpio_pdata*, %struct.rdc321x_gpio_pdata** %7, align 8
  %111 = getelementptr inbounds %struct.rdc321x_gpio_pdata, %struct.rdc321x_gpio_pdata* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %114 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %118 = call i32 @platform_set_drvdata(%struct.platform_device* %116, %struct.rdc321x_gpio* %117)
  %119 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %120 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %123 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %126 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = call i32 @pci_read_config_dword(i32 %121, i64 %124, i32* %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %72
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %164

134:                                              ; preds = %72
  %135 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %136 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %139 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %142 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = call i32 @pci_read_config_dword(i32 %137, i64 %140, i32* %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %134
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  br label %164

150:                                              ; preds = %134
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %154 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @dev_info(i32* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %161 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %160, i32 0, i32 0
  %162 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %6, align 8
  %163 = call i32 @devm_gpiochip_add_data(i32* %159, %struct.TYPE_2__* %161, %struct.rdc321x_gpio* %162)
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %150, %148, %132, %66, %35, %26, %13
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.rdc321x_gpio_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.rdc321x_gpio* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rdc321x_gpio*) #1

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.TYPE_2__*, %struct.rdc321x_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

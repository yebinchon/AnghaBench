; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lp_gpio = type { %struct.gpio_chip, i32, i64, %struct.platform_device* }
%struct.gpio_chip = type { i32, i32, %struct.gpio_irq_chip, %struct.device*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, i32, i32* }
%struct.resource = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"missing IO resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"lp-gpio\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed requesting IO region 0x%x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@lp_gpio_request = common dso_local global i32 0, align 4
@lp_gpio_free = common dso_local global i32 0, align 4
@lp_gpio_direction_input = common dso_local global i32 0, align 4
@lp_gpio_direction_output = common dso_local global i32 0, align 4
@lp_gpio_get = common dso_local global i32 0, align 4
@lp_gpio_set = common dso_local global i32 0, align 4
@LP_NUM_GPIO = common dso_local global i32 0, align 4
@lp_irqchip = common dso_local global i32 0, align 4
@lp_gpio_irq_init_hw = common dso_local global i32 0, align 4
@lp_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed adding lp-gpio chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp_gpio*, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gpio_irq_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.lp_gpio* @devm_kzalloc(%struct.device* %16, i32 120, i32 %17)
  store %struct.lp_gpio* %18, %struct.lp_gpio** %4, align 8
  %19 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %20 = icmp ne %struct.lp_gpio* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %174

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %26, i32 0, i32 3
  store %struct.platform_device* %25, %struct.platform_device** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.lp_gpio* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_IO, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_IRQ, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %7, align 8
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = icmp ne %struct.resource* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %24
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %174

44:                                               ; preds = %24
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %49 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = call i64 @resource_size(%struct.resource* %50)
  store i64 %51, i64* %9, align 8
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %54 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @devm_request_region(%struct.device* %52, i64 %55, i64 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %44
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %62 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %174

68:                                               ; preds = %44
  %69 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %70 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %69, i32 0, i32 1
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %73 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %72, i32 0, i32 0
  store %struct.gpio_chip* %73, %struct.gpio_chip** %5, align 8
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = call i32 @dev_name(%struct.device* %74)
  %76 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %77 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @THIS_MODULE, align 4
  %79 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %80 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %79, i32 0, i32 11
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @lp_gpio_request, align 4
  %82 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %83 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @lp_gpio_free, align 4
  %85 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %86 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @lp_gpio_direction_input, align 4
  %88 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %89 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @lp_gpio_direction_output, align 4
  %91 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %92 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @lp_gpio_get, align 4
  %94 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %95 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @lp_gpio_set, align 4
  %97 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %98 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %100 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %99, i32 0, i32 0
  store i32 -1, i32* %100, align 8
  %101 = load i32, i32* @LP_NUM_GPIO, align 4
  %102 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %103 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %105 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.device*, %struct.device** %8, align 8
  %107 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %108 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %107, i32 0, i32 3
  store %struct.device* %106, %struct.device** %108, align 8
  %109 = load %struct.resource*, %struct.resource** %7, align 8
  %110 = icmp ne %struct.resource* %109, null
  br i1 %110, label %111, label %160

111:                                              ; preds = %68
  %112 = load %struct.resource*, %struct.resource** %7, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %160

116:                                              ; preds = %111
  %117 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %118 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %117, i32 0, i32 2
  store %struct.gpio_irq_chip* %118, %struct.gpio_irq_chip** %11, align 8
  %119 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %120 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %119, i32 0, i32 6
  store i32* @lp_irqchip, i32** %120, align 8
  %121 = load i32, i32* @lp_gpio_irq_init_hw, align 4
  %122 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %123 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @lp_gpio_irq_handler, align 4
  %125 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %126 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %128 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %132 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i32* @devm_kcalloc(%struct.device* %130, i32 %133, i32 4, i32 %134)
  %136 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %137 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %136, i32 0, i32 1
  store i32* %135, i32** %137, align 8
  %138 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %139 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %116
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %174

145:                                              ; preds = %116
  %146 = load %struct.resource*, %struct.resource** %7, align 8
  %147 = getelementptr inbounds %struct.resource, %struct.resource* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %151 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %155 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %156 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @handle_bad_irq, align 4
  %158 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %11, align 8
  %159 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %145, %111, %68
  %161 = load %struct.device*, %struct.device** %8, align 8
  %162 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %163 = load %struct.lp_gpio*, %struct.lp_gpio** %4, align 8
  %164 = call i32 @devm_gpiochip_add_data(%struct.device* %161, %struct.gpio_chip* %162, %struct.lp_gpio* %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load %struct.device*, %struct.device** %8, align 8
  %169 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %2, align 4
  br label %174

171:                                              ; preds = %160
  %172 = load %struct.device*, %struct.device** %8, align 8
  %173 = call i32 @pm_runtime_enable(%struct.device* %172)
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %171, %167, %142, %59, %39, %21
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.lp_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp_gpio*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i64, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, %struct.lp_gpio*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

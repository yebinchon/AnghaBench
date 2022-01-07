; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mb86s7x.c_mb86s70_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mb86s7x.c_mb86s70_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mb86s70_gpio_chip = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mb86s70_gpio_direction_output = common dso_local global i32 0, align 4
@mb86s70_gpio_direction_input = common dso_local global i32 0, align 4
@mb86s70_gpio_request = common dso_local global i32 0, align 4
@mb86s70_gpio_free = common dso_local global i32 0, align 4
@mb86s70_gpio_get = common dso_local global i32 0, align 4
@mb86s70_gpio_set = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@mb86s70_gpio_to_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't register gpio driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mb86s70_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86s70_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mb86s70_gpio_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mb86s70_gpio_chip* @devm_kzalloc(i32* %7, i32 72, i32 %8)
  store %struct.mb86s70_gpio_chip* %9, %struct.mb86s70_gpio_chip** %4, align 8
  %10 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %11 = icmp eq %struct.mb86s70_gpio_chip* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %148

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.mb86s70_gpio_chip* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %22 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %24 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %30 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %148

33:                                               ; preds = %15
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i64 @has_acpi_companion(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %33
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @devm_clk_get(i32* %40, i32* null)
  %42 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %43 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %45 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %51 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %148

54:                                               ; preds = %38
  %55 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %56 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @clk_prepare_enable(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %148

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %66 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %65, i32 0, i32 2
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load i32, i32* @mb86s70_gpio_direction_output, align 4
  %69 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %70 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 11
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @mb86s70_gpio_direction_input, align 4
  %73 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %74 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 10
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @mb86s70_gpio_request, align 4
  %77 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %78 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 9
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @mb86s70_gpio_free, align 4
  %81 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %82 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 8
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @mb86s70_gpio_get, align 4
  %85 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %86 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 7
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @mb86s70_gpio_set, align 4
  %89 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %90 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_name(i32* %93)
  %95 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %96 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 4
  %98 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %99 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 32, i32* %100, align 8
  %101 = load i32, i32* @THIS_MODULE, align 4
  %102 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %103 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 8
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %108 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i32* %106, i32** %109, align 8
  %110 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %111 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 -1, i32* %112, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i64 @has_acpi_companion(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %64
  %118 = load i32, i32* @mb86s70_gpio_to_irq, align 4
  %119 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %120 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %64
  %123 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %124 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %123, i32 0, i32 0
  %125 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %126 = call i32 @gpiochip_add_data(%struct.TYPE_3__* %124, %struct.mb86s70_gpio_chip* %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %133 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %134 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @clk_disable_unprepare(i32 %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %148

138:                                              ; preds = %122
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i64 @has_acpi_companion(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.mb86s70_gpio_chip*, %struct.mb86s70_gpio_chip** %4, align 8
  %145 = getelementptr inbounds %struct.mb86s70_gpio_chip, %struct.mb86s70_gpio_chip* %144, i32 0, i32 0
  %146 = call i32 @acpi_gpiochip_request_interrupts(%struct.TYPE_3__* %145)
  br label %147

147:                                              ; preds = %143, %138
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %129, %61, %49, %28, %12
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.mb86s70_gpio_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mb86s70_gpio_chip*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @has_acpi_companion(i32*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_3__*, %struct.mb86s70_gpio_chip*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @acpi_gpiochip_request_interrupts(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

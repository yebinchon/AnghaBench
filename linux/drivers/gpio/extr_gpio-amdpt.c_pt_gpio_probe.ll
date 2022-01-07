; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amdpt.c_pt_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amdpt.c_pt_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.acpi_device = type { i32 }
%struct.pt_gpio_chip = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"PT GPIO device node not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to map MMIO resource for PT GPIO.\0A\00", align 1
@PT_INPUTDATA_REG = common dso_local global i64 0, align 8
@PT_OUTPUTDATA_REG = common dso_local global i64 0, align 8
@PT_DIRECTION_REG = common dso_local global i64 0, align 8
@BGPIOF_READ_OUTPUT_REG_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"bgpio_init failed\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@pt_gpio_request = common dso_local global i32 0, align 4
@pt_gpio_free = common dso_local global i32 0, align 4
@PT_TOTAL_GPIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to register GPIO lib\0A\00", align 1
@PT_SYNC_REG = common dso_local global i64 0, align 8
@PT_CLOCKRATE_REG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"PT GPIO driver loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pt_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_gpio_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @ACPI_HANDLE(%struct.device* %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @acpi_bus_get_device(i32 %13, %struct.acpi_device** %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %120

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.pt_gpio_chip* @devm_kzalloc(%struct.device* %22, i32 32, i32 %23)
  store %struct.pt_gpio_chip* %24, %struct.pt_gpio_chip** %7, align 8
  %25 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %26 = icmp ne %struct.pt_gpio_chip* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %120

30:                                               ; preds = %21
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %31, i32 0)
  %33 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %34 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %36 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @IS_ERR(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %44 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @PTR_ERR(i64 %45)
  store i32 %46, i32* %2, align 4
  br label %120

47:                                               ; preds = %30
  %48 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %49 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %48, i32 0, i32 1
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %52 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PT_INPUTDATA_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %57 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PT_OUTPUTDATA_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %62 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PT_DIRECTION_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* @BGPIOF_READ_OUTPUT_REG_SET, align 4
  %67 = call i32 @bgpio_init(%struct.TYPE_3__* %49, %struct.device* %50, i32 4, i64 %55, i64 %60, i32* null, i64 %65, i32* null, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %47
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %120

74:                                               ; preds = %47
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %77 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @pt_gpio_request, align 4
  %80 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %81 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @pt_gpio_free, align 4
  %84 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %85 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @PT_TOTAL_GPIO, align 4
  %88 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %89 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %92 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %91, i32 0, i32 1
  %93 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %94 = call i32 @gpiochip_add_data(%struct.TYPE_3__* %92, %struct.pt_gpio_chip* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %74
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %120

101:                                              ; preds = %74
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.pt_gpio_chip* %103)
  %105 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %106 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PT_SYNC_REG, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 0, i64 %109)
  %111 = load %struct.pt_gpio_chip*, %struct.pt_gpio_chip** %7, align 8
  %112 = getelementptr inbounds %struct.pt_gpio_chip, %struct.pt_gpio_chip* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PT_CLOCKRATE_REG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 0, i64 %115)
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @dev_dbg(%struct.device* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %101, %97, %70, %40, %27, %16
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.pt_gpio_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_3__*, %struct.device*, i32, i64, i64, i32*, i64, i32*, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_3__*, %struct.pt_gpio_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pt_gpio_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

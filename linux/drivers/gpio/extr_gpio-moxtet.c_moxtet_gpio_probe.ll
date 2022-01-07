; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-moxtet.c_moxtet_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-moxtet.c_moxtet_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.moxtet_gpio_chip = type { %struct.TYPE_4__, i32*, %struct.device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_3__ = type { i32 }

@descs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"%pOF Moxtet device id 0x%x is not supported by gpio-moxtet driver\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@moxtet_gpio_get_direction = common dso_local global i32 0, align 4
@moxtet_gpio_direction_input = common dso_local global i32 0, align 4
@moxtet_gpio_direction_output = common dso_local global i32 0, align 4
@moxtet_gpio_get_value = common dso_local global i32 0, align 4
@moxtet_gpio_set_value = common dso_local global i32 0, align 4
@MOXTET_GPIO_NGPIOS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @moxtet_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxtet_gpio_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.moxtet_gpio_chip*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.TYPE_3__* @to_moxtet_device(%struct.device* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** @descs, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.device_node* %20, i32 %21)
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %95

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.moxtet_gpio_chip* @devm_kzalloc(%struct.device* %26, i32 64, i32 %27)
  store %struct.moxtet_gpio_chip* %28, %struct.moxtet_gpio_chip** %4, align 8
  %29 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %30 = icmp ne %struct.moxtet_gpio_chip* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %95

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %37 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %36, i32 0, i32 2
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %40 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 10
  store %struct.device* %38, %struct.device** %41, align 8
  %42 = load i32*, i32** @descs, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %47 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %50 = call i32 @dev_set_drvdata(%struct.device* %48, %struct.moxtet_gpio_chip* %49)
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 @dev_name(%struct.device* %51)
  %53 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %54 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 9
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @moxtet_gpio_get_direction, align 4
  %57 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %58 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 8
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @moxtet_gpio_direction_input, align 4
  %61 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %62 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 7
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @moxtet_gpio_direction_output, align 4
  %65 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %66 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @moxtet_gpio_get_value, align 4
  %69 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %70 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @moxtet_gpio_set_value, align 4
  %73 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %74 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 8
  %76 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %77 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  %79 = load i32, i32* @MOXTET_GPIO_NGPIOS, align 4
  %80 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %81 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %84 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load i32, i32* @THIS_MODULE, align 4
  %87 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %88 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %92 = getelementptr inbounds %struct.moxtet_gpio_chip, %struct.moxtet_gpio_chip* %91, i32 0, i32 0
  %93 = load %struct.moxtet_gpio_chip*, %struct.moxtet_gpio_chip** %4, align 8
  %94 = call i32 @devm_gpiochip_add_data(%struct.device* %90, %struct.TYPE_4__* %92, %struct.moxtet_gpio_chip* %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %34, %31, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_3__* @to_moxtet_device(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*, i32) #1

declare dso_local %struct.moxtet_gpio_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.moxtet_gpio_chip*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_4__*, %struct.moxtet_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

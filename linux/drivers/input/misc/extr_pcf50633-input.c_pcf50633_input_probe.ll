; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcf50633-input.c_pcf50633_input_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcf50633-input.c_pcf50633_input_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pcf50633_input = type { i32, %struct.input_dev* }
%struct.input_dev = type { i8*, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PCF50633 PMU events\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_PWR = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@PCF50633_IRQ_ONKEYR = common dso_local global i32 0, align 4
@pcf50633_input_irq = common dso_local global i32 0, align 4
@PCF50633_IRQ_ONKEYF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcf50633_input_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_input_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pcf50633_input*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pcf50633_input* @kzalloc(i32 16, i32 %7)
  store %struct.pcf50633_input* %8, %struct.pcf50633_input** %4, align 8
  %9 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %10 = icmp ne %struct.pcf50633_input* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %82

14:                                               ; preds = %1
  %15 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %15, %struct.input_dev** %5, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %17 = icmp ne %struct.input_dev* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %20 = call i32 @kfree(%struct.pcf50633_input* %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %82

23:                                               ; preds = %14
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.pcf50633_input* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_to_pcf50633(i32 %30)
  %32 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %33 = getelementptr inbounds %struct.pcf50633_input, %struct.pcf50633_input* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %36 = getelementptr inbounds %struct.pcf50633_input, %struct.pcf50633_input* %35, i32 0, i32 1
  store %struct.input_dev* %34, %struct.input_dev** %36, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @BUS_I2C, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @EV_KEY, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load i32, i32* @EV_PWR, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = or i32 %44, %46
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @KEY_POWER, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @set_bit(i32 %52, i32 %55)
  %57 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %58 = call i32 @input_register_device(%struct.input_dev* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %23
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = call i32 @input_free_device(%struct.input_dev* %62)
  %64 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %65 = call i32 @kfree(%struct.pcf50633_input* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %82

67:                                               ; preds = %23
  %68 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %69 = getelementptr inbounds %struct.pcf50633_input, %struct.pcf50633_input* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PCF50633_IRQ_ONKEYR, align 4
  %72 = load i32, i32* @pcf50633_input_irq, align 4
  %73 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %74 = call i32 @pcf50633_register_irq(i32 %70, i32 %71, i32 %72, %struct.pcf50633_input* %73)
  %75 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %76 = getelementptr inbounds %struct.pcf50633_input, %struct.pcf50633_input* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PCF50633_IRQ_ONKEYF, align 4
  %79 = load i32, i32* @pcf50633_input_irq, align 4
  %80 = load %struct.pcf50633_input*, %struct.pcf50633_input** %4, align 8
  %81 = call i32 @pcf50633_register_irq(i32 %77, i32 %78, i32 %79, %struct.pcf50633_input* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %67, %61, %18, %11
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.pcf50633_input* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @kfree(%struct.pcf50633_input*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pcf50633_input*) #1

declare dso_local i32 @dev_to_pcf50633(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @pcf50633_register_irq(i32, i32, i32, %struct.pcf50633_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

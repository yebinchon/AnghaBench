; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-madera.c_madera_irq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-madera.c_madera_irq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.madera = type { i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"probe\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid IRQ: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Host interrupt not level-triggered\0A\00", align 1
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@MADERA_IRQ1_CTRL = common dso_local global i32 0, align 4
@MADERA_IRQ_POL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set IRQ polarity: %d\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@madera_irq_chip = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"add_irq_chip failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @madera_irq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_irq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.madera* @dev_get_drvdata(i32 %11)
  store %struct.madera* %12, %struct.madera** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.madera*, %struct.madera** %4, align 8
  %17 = getelementptr inbounds %struct.madera, %struct.madera* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %1
  %23 = load %struct.madera*, %struct.madera** %4, align 8
  %24 = getelementptr inbounds %struct.madera, %struct.madera* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.irq_data* @irq_get_irq_data(i32 %25)
  store %struct.irq_data* %26, %struct.irq_data** %5, align 8
  %27 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %28 = icmp ne %struct.irq_data* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.madera*, %struct.madera** %4, align 8
  %33 = getelementptr inbounds %struct.madera, %struct.madera* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %105

38:                                               ; preds = %22
  %39 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %40 = call i32 @irqd_get_trigger_type(%struct.irq_data* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %38
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %50 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %105

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load %struct.madera*, %struct.madera** %4, align 8
  %67 = getelementptr inbounds %struct.madera, %struct.madera* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MADERA_IRQ1_CTRL, align 4
  %70 = load i32, i32* @MADERA_IRQ_POL_MASK, align 4
  %71 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %105

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %60
  %82 = load %struct.madera*, %struct.madera** %4, align 8
  %83 = getelementptr inbounds %struct.madera, %struct.madera* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.madera*, %struct.madera** %4, align 8
  %86 = getelementptr inbounds %struct.madera, %struct.madera* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IRQF_ONESHOT, align 4
  %89 = load %struct.madera*, %struct.madera** %4, align 8
  %90 = getelementptr inbounds %struct.madera, %struct.madera* %89, i32 0, i32 2
  %91 = call i32 @regmap_add_irq_chip(i32 %84, i32 %87, i32 %88, i32 0, i32* @madera_irq_chip, i32* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %81
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %105

100:                                              ; preds = %81
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.madera*, %struct.madera** %4, align 8
  %104 = getelementptr inbounds %struct.madera, %struct.madera* %103, i32 0, i32 1
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %94, %74, %54, %29
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.madera* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

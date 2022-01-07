; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vr41xx.c_giu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vr41xx.c_giu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.irq_chip = type { i32 }
%struct.platform_device = type { i32, i32 }

@GPIO_HAS_PULLUPDOWN_IO = common dso_local global i32 0, align 4
@giu_flags = common dso_local global i32 0, align 4
@vr41xx_gpio_chip = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GPIO_HAS_INTERRUPT_EDGE_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GIU: unknown ID %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@giu_base = common dso_local global i32 0, align 4
@GIUINTENL = common dso_local global i32 0, align 4
@GIUINTENH = common dso_local global i32 0, align 4
@GIUINTTYPH = common dso_local global i32 0, align 4
@GIUINTTYPL = common dso_local global i32 0, align 4
@GIU_IRQ_BASE = common dso_local global i32 0, align 4
@GIU_IRQ_LAST = common dso_local global i32 0, align 4
@GIUINT_HIGH_OFFSET = common dso_local global i32 0, align 4
@giuint_low_irq_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@giuint_high_irq_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@nr_irqs = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@giu_get_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @giu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @giu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %17 [
    i32 128, label %12
    i32 130, label %14
    i32 129, label %15
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @GPIO_HAS_PULLUPDOWN_IO, align 4
  store i32 %13, i32* @giu_flags, align 4
  store i32 50, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vr41xx_gpio_chip, i32 0, i32 0), align 8
  br label %26

14:                                               ; preds = %1
  store i32 36, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vr41xx_gpio_chip, i32 0, i32 0), align 8
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* @GPIO_HAS_INTERRUPT_EDGE_SELECT, align 4
  store i32 %16, i32* @giu_flags, align 4
  store i32 48, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vr41xx_gpio_chip, i32 0, i32 0), align 8
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %104

26:                                               ; preds = %15, %14, %12
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %27, i32 0)
  store i32 %28, i32* @giu_base, align 4
  %29 = load i32, i32* @giu_base, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @giu_base, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %104

35:                                               ; preds = %26
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  store i32* %37, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vr41xx_gpio_chip, i32 0, i32 1), align 8
  %38 = call i64 @gpiochip_add_data(%struct.TYPE_3__* @vr41xx_gpio_chip, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %104

43:                                               ; preds = %35
  %44 = load i32, i32* @GIUINTENL, align 4
  %45 = call i32 @giu_write(i32 %44, i32 0)
  %46 = load i32, i32* @GIUINTENH, align 4
  %47 = call i32 @giu_write(i32 %46, i32 0)
  %48 = load i32, i32* @GIUINTTYPH, align 4
  %49 = call i32 @giu_read(i32 %48)
  %50 = shl i32 %49, 16
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @GIUINTTYPL, align 4
  %52 = call i32 @giu_read(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @GIU_IRQ_BASE, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %85, %43
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @GIU_IRQ_LAST, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @GPIO_PIN_OF_IRQ(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @GIUINT_HIGH_OFFSET, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store %struct.irq_chip* @giuint_low_irq_chip, %struct.irq_chip** %7, align 8
  br label %68

67:                                               ; preds = %60
  store %struct.irq_chip* @giuint_high_irq_chip, %struct.irq_chip** %7, align 8
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %77 = load i32, i32* @handle_edge_irq, align 4
  %78 = call i32 @irq_set_chip_and_handler(i32 %75, %struct.irq_chip* %76, i32 %77)
  br label %84

79:                                               ; preds = %68
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %82 = load i32, i32* @handle_level_irq, align 4
  %83 = call i32 @irq_set_chip_and_handler(i32 %80, %struct.irq_chip* %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %56

88:                                               ; preds = %56
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i32 @platform_get_irq(%struct.platform_device* %89, i32 0)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @nr_irqs, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %88
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @giu_get_irq, align 4
  %103 = call i32 @cascade_irq(i32 %101, i32 %102)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %97, %40, %32, %17
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @gpiochip_add_data(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @giu_write(i32, i32) #1

declare dso_local i32 @giu_read(i32) #1

declare dso_local i32 @GPIO_PIN_OF_IRQ(i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @cascade_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_gpio_event = type { i32, i32, i32, i32 (i32, %struct.acpi_gpio_event*)*, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"ACPI:Event\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to setup interrupt handler for %d\0A\00", align 1
@run_edge_events_on_boot = common dso_local global i64 0, align 8
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_gpio_chip*, %struct.acpi_gpio_event*)* @acpi_gpiochip_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_gpiochip_request_irq(%struct.acpi_gpio_chip* %0, %struct.acpi_gpio_event* %1) #0 {
  %3 = alloca %struct.acpi_gpio_chip*, align 8
  %4 = alloca %struct.acpi_gpio_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_gpio_chip* %0, %struct.acpi_gpio_chip** %3, align 8
  store %struct.acpi_gpio_event* %1, %struct.acpi_gpio_event** %4, align 8
  %7 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %10, i32 0, i32 3
  %12 = load i32 (i32, %struct.acpi_gpio_event*)*, i32 (i32, %struct.acpi_gpio_event*)** %11, align 8
  %13 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %17 = call i32 @request_threaded_irq(i32 %9, i32* null, i32 (i32, %struct.acpi_gpio_event*)* %12, i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.acpi_gpio_event* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_gpio_chip, %struct.acpi_gpio_chip* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %88

30:                                               ; preds = %2
  %31 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @enable_irq_wake(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %42 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load i64, i64* @run_edge_events_on_boot, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %88

45:                                               ; preds = %40
  %46 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %50 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %45
  %55 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %56 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @gpiod_get_raw_value_cansleep(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %78, label %68

68:                                               ; preds = %65, %54
  %69 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %70 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75, %65
  %79 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %80 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %79, i32 0, i32 3
  %81 = load i32 (i32, %struct.acpi_gpio_event*)*, i32 (i32, %struct.acpi_gpio_event*)** %80, align 8
  %82 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %83 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %4, align 8
  %86 = call i32 %81(i32 %84, %struct.acpi_gpio_event* %85)
  br label %87

87:                                               ; preds = %78, %75, %68
  br label %88

88:                                               ; preds = %20, %87, %45, %40
  ret void
}

declare dso_local i32 @request_threaded_irq(i32, i32*, i32 (i32, %struct.acpi_gpio_event*)*, i32, i8*, %struct.acpi_gpio_event*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @gpiod_get_raw_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

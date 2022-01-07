; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-siox.c_gpio_siox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-siox.c_gpio_siox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gpio_siox_ddata = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.gpio_irq_chip, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.gpio_irq_chip = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@gpio_siox_get = common dso_local global i32 0, align 4
@gpio_siox_set = common dso_local global i32 0, align 4
@gpio_siox_direction_input = common dso_local global i32 0, align 4
@gpio_siox_direction_output = common dso_local global i32 0, align 4
@gpio_siox_get_direction = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"siox-gpio\00", align 1
@gpio_siox_irq_ack = common dso_local global i32 0, align 4
@gpio_siox_irq_mask = common dso_local global i32 0, align 4
@gpio_siox_irq_unmask = common dso_local global i32 0, align 4
@gpio_siox_irq_set_type = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register gpio chip (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siox_device*)* @gpio_siox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_siox_probe(%struct.siox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siox_device*, align 8
  %4 = alloca %struct.gpio_siox_ddata*, align 8
  %5 = alloca %struct.gpio_irq_chip*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.siox_device* %0, %struct.siox_device** %3, align 8
  %8 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %9 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gpio_siox_ddata* @devm_kzalloc(%struct.device* %10, i32 96, i32 %11)
  store %struct.gpio_siox_ddata* %12, %struct.gpio_siox_ddata** %4, align 8
  %13 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %14 = icmp ne %struct.gpio_siox_ddata* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %109

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %21 = call i32 @dev_set_drvdata(%struct.device* %19, %struct.gpio_siox_ddata* %20)
  %22 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %22, i32 0, i32 3
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %26 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %25, i32 0, i32 2
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %32 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %36 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 10
  store %struct.device* %34, %struct.device** %37, align 8
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %40 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 9
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @gpio_siox_get, align 4
  %43 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %44 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 8
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @gpio_siox_set, align 4
  %47 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %48 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @gpio_siox_direction_input, align 4
  %51 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %52 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @gpio_siox_direction_output, align 4
  %55 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %56 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @gpio_siox_get_direction, align 4
  %59 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %60 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 8
  %62 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %63 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 20, i32* %64, align 8
  %65 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %66 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @gpio_siox_irq_ack, align 4
  %69 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %70 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @gpio_siox_irq_mask, align 4
  %73 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %74 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @gpio_siox_irq_unmask, align 4
  %77 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %78 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @gpio_siox_irq_set_type, align 4
  %81 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %82 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %85 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store %struct.gpio_irq_chip* %86, %struct.gpio_irq_chip** %5, align 8
  %87 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %88 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %87, i32 0, i32 1
  %89 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %90 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %89, i32 0, i32 2
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %90, align 8
  %91 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %92 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %93 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @handle_level_irq, align 4
  %95 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %96 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %4, align 8
  %99 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %98, i32 0, i32 0
  %100 = call i32 @devm_gpiochip_add_data(%struct.device* %97, %struct.TYPE_4__* %99, i32* null)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %18
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %18
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %15
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.gpio_siox_ddata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.gpio_siox_ddata*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.titsc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @titsc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titsc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.titsc*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.titsc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.titsc* %6, %struct.titsc** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @dev_pm_clear_wake_irq(i32* %8)
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @device_init_wakeup(i32* %11, i32 0)
  %13 = load %struct.titsc*, %struct.titsc** %3, align 8
  %14 = getelementptr inbounds %struct.titsc, %struct.titsc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.titsc*, %struct.titsc** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.titsc* %16)
  %18 = load %struct.titsc*, %struct.titsc** %3, align 8
  %19 = getelementptr inbounds %struct.titsc, %struct.titsc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load %struct.titsc*, %struct.titsc** %3, align 8
  %27 = getelementptr inbounds %struct.titsc, %struct.titsc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @am335x_tsc_se_clr(i32 %28, i32 %29)
  %31 = load %struct.titsc*, %struct.titsc** %3, align 8
  %32 = getelementptr inbounds %struct.titsc, %struct.titsc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @input_unregister_device(i32 %33)
  %35 = load %struct.titsc*, %struct.titsc** %3, align 8
  %36 = call i32 @kfree(%struct.titsc* %35)
  ret i32 0
}

declare dso_local %struct.titsc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.titsc*) #1

declare dso_local i32 @am335x_tsc_se_clr(i32, i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.titsc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

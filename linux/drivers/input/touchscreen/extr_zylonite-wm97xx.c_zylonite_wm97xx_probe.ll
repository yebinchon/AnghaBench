; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zylonite-wm97xx.c_zylonite_wm97xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zylonite-wm97xx.c_zylonite_wm97xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wm97xx = type { i32 }

@MFP_PIN_GPIO15 = common dso_local global i32 0, align 4
@MFP_PIN_GPIO26 = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@WM97XX_GPIO_13 = common dso_local global i32 0, align 4
@WM97XX_GPIO_IN = common dso_local global i32 0, align 4
@WM97XX_GPIO_POL_HIGH = common dso_local global i32 0, align 4
@WM97XX_GPIO_STICKY = common dso_local global i32 0, align 4
@WM97XX_GPIO_WAKE = common dso_local global i32 0, align 4
@WM97XX_GPIO_2 = common dso_local global i32 0, align 4
@WM97XX_GPIO_OUT = common dso_local global i32 0, align 4
@WM97XX_GPIO_NOTSTICKY = common dso_local global i32 0, align 4
@WM97XX_GPIO_NOWAKE = common dso_local global i32 0, align 4
@zylonite_mach_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zylonite_wm97xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zylonite_wm97xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.wm97xx* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.wm97xx* %6, %struct.wm97xx** %3, align 8
  %7 = call i64 (...) @cpu_is_pxa320()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @MFP_PIN_GPIO15, align 4
  %11 = call i32 @mfp_to_gpio(i32 %10)
  store i32 %11, i32* %4, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @MFP_PIN_GPIO26, align 4
  %14 = call i32 @mfp_to_gpio(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @gpio_to_irq(i32 %16)
  %18 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %19 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %21 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %24 = call i32 @irq_set_irq_type(i32 %22, i32 %23)
  %25 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %26 = load i32, i32* @WM97XX_GPIO_13, align 4
  %27 = load i32, i32* @WM97XX_GPIO_IN, align 4
  %28 = load i32, i32* @WM97XX_GPIO_POL_HIGH, align 4
  %29 = load i32, i32* @WM97XX_GPIO_STICKY, align 4
  %30 = load i32, i32* @WM97XX_GPIO_WAKE, align 4
  %31 = call i32 @wm97xx_config_gpio(%struct.wm97xx* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %33 = load i32, i32* @WM97XX_GPIO_2, align 4
  %34 = load i32, i32* @WM97XX_GPIO_OUT, align 4
  %35 = load i32, i32* @WM97XX_GPIO_POL_HIGH, align 4
  %36 = load i32, i32* @WM97XX_GPIO_NOTSTICKY, align 4
  %37 = load i32, i32* @WM97XX_GPIO_NOWAKE, align 4
  %38 = call i32 @wm97xx_config_gpio(%struct.wm97xx* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %40 = call i32 @wm97xx_register_mach_ops(%struct.wm97xx* %39, i32* @zylonite_mach_ops)
  ret i32 %40
}

declare dso_local %struct.wm97xx* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @cpu_is_pxa320(...) #1

declare dso_local i32 @mfp_to_gpio(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @wm97xx_config_gpio(%struct.wm97xx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wm97xx_register_mach_ops(%struct.wm97xx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

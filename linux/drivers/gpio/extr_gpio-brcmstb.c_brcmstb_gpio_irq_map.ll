; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.brcmstb_gpio_priv* }
%struct.brcmstb_gpio_priv = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.brcmstb_gpio_bank = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Mapping irq %d for gpio line %d (bank %d)\0A\00", align 1
@brcmstb_gpio_irq_lock_class = common dso_local global i32 0, align 4
@brcmstb_gpio_irq_request_class = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @brcmstb_gpio_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_gpio_irq_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.brcmstb_gpio_priv*, align 8
  %9 = alloca %struct.brcmstb_gpio_bank*, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %13 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %12, i32 0, i32 0
  %14 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %13, align 8
  store %struct.brcmstb_gpio_priv* %14, %struct.brcmstb_gpio_priv** %8, align 8
  %15 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.brcmstb_gpio_bank* @brcmstb_gpio_hwirq_to_bank(%struct.brcmstb_gpio_priv* %15, i64 %16)
  store %struct.brcmstb_gpio_bank* %17, %struct.brcmstb_gpio_bank** %9, align 8
  %18 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %19 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %18, i32 0, i32 1
  %20 = load %struct.platform_device*, %struct.platform_device** %19, align 8
  store %struct.platform_device* %20, %struct.platform_device** %10, align 8
  %21 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %9, align 8
  %22 = icmp ne %struct.brcmstb_gpio_bank* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %54

26:                                               ; preds = %3
  %27 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %9, align 8
  %33 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %9, align 8
  %38 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %37, i32 0, i32 0
  %39 = call i32 @irq_set_chip_data(i32 %36, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %26
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @irq_set_lockdep_class(i32 %45, i32* @brcmstb_gpio_irq_lock_class, i32* @brcmstb_gpio_irq_request_class)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %49 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %48, i32 0, i32 0
  %50 = load i32, i32* @handle_level_irq, align 4
  %51 = call i32 @irq_set_chip_and_handler(i32 %47, i32* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @irq_set_noprobe(i32 %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %42, %23
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.brcmstb_gpio_bank* @brcmstb_gpio_hwirq_to_bank(%struct.brcmstb_gpio_priv*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, i32*) #1

declare dso_local i32 @irq_set_lockdep_class(i32, i32*, i32*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_noprobe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

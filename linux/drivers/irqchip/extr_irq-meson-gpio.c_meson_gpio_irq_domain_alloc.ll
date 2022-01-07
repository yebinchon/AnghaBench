; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-meson-gpio.c_meson_gpio_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-meson-gpio.c_meson_gpio_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.meson_gpio_irq_controller* }
%struct.meson_gpio_irq_controller = type { i32 }
%struct.irq_fwspec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate gic irq %u\0A\00", align 1
@meson_gpio_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @meson_gpio_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gpio_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_fwspec*, align 8
  %11 = alloca %struct.meson_gpio_irq_controller*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %17, %struct.irq_fwspec** %10, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %19 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %18, i32 0, i32 0
  %20 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %19, align 8
  store %struct.meson_gpio_irq_controller* %20, %struct.meson_gpio_irq_controller** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %4
  %30 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %31 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %32 = call i32 @meson_gpio_irq_domain_translate(%struct.irq_domain* %30, %struct.irq_fwspec* %31, i64* %12, i32* %14)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %5, align 4
  br label %68

37:                                               ; preds = %29
  %38 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @meson_gpio_irq_request_channel(%struct.meson_gpio_irq_controller* %38, i64 %39, i32** %13)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %5, align 4
  br label %68

45:                                               ; preds = %37
  %46 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @meson_gpio_irq_allocate_gic_irq(%struct.irq_domain* %46, i32 %47, i32 %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %11, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @meson_gpio_irq_release_channel(%struct.meson_gpio_irq_controller* %58, i32* %59)
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %5, align 4
  br label %68

62:                                               ; preds = %45
  %63 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i64, i64* %12, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %63, i32 %64, i64 %65, i32* @meson_gpio_irq_chip, i32* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %54, %43, %35, %26
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @meson_gpio_irq_domain_translate(%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*) #1

declare dso_local i32 @meson_gpio_irq_request_channel(%struct.meson_gpio_irq_controller*, i64, i32**) #1

declare dso_local i32 @meson_gpio_irq_allocate_gic_irq(%struct.irq_domain*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @meson_gpio_irq_release_channel(%struct.meson_gpio_irq_controller*, i32*) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tb10x.c_tb10x_gpio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tb10x.c_tb10x_gpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tb10x_gpio = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tb10x_gpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb10x_gpio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tb10x_gpio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.tb10x_gpio* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.tb10x_gpio* %5, %struct.tb10x_gpio** %3, align 8
  %6 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %3, align 8
  %7 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %3, align 8
  %13 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %3, align 8
  %22 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @BIT(i32 %24)
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @irq_remove_generic_chip(i32 %20, i64 %26, i32 0, i32 0)
  %28 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %3, align 8
  %29 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @kfree(%struct.TYPE_5__* %32)
  %34 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %3, align 8
  %35 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @irq_domain_remove(%struct.TYPE_6__* %36)
  br label %38

38:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local %struct.tb10x_gpio* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @irq_remove_generic_chip(i32, i64, i32, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @irq_domain_remove(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

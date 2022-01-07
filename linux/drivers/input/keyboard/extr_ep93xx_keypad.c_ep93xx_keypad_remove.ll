; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ep93xx_keypad = type { i32, i32, i32, i64, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_keypad_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_keypad_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ep93xx_keypad*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ep93xx_keypad* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ep93xx_keypad* %6, %struct.ep93xx_keypad** %3, align 8
  %7 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %3, align 8
  %8 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.ep93xx_keypad* %10)
  %12 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %3, align 8
  %13 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %3, align 8
  %18 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_disable(i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %3, align 8
  %23 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_put(i32 %24)
  %26 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %3, align 8
  %27 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @input_unregister_device(i32 %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = call i32 @ep93xx_keypad_release_gpio(%struct.platform_device* %30)
  %32 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %3, align 8
  %33 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @iounmap(i32 %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %4, align 8
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.resource*, %struct.resource** %4, align 8
  %43 = call i32 @resource_size(%struct.resource* %42)
  %44 = call i32 @release_mem_region(i32 %41, i32 %43)
  %45 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %3, align 8
  %46 = call i32 @kfree(%struct.ep93xx_keypad* %45)
  ret i32 0
}

declare dso_local %struct.ep93xx_keypad* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.ep93xx_keypad*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @ep93xx_keypad_release_gpio(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.ep93xx_keypad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

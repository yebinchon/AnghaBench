; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap4_keypad = type { %struct.omap4_keypad*, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap4_keypad_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_keypad_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap4_keypad*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.omap4_keypad* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.omap4_keypad* %6, %struct.omap4_keypad** %3, align 8
  %7 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %8 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.omap4_keypad* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_disable(i32* %13)
  %15 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %16 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @input_unregister_device(i32 %17)
  %19 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %20 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @iounmap(i32 %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = call i32 @resource_size(%struct.resource* %29)
  %31 = call i32 @release_mem_region(i32 %28, i32 %30)
  %32 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %33 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %32, i32 0, i32 0
  %34 = load %struct.omap4_keypad*, %struct.omap4_keypad** %33, align 8
  %35 = call i32 @kfree(%struct.omap4_keypad* %34)
  %36 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %37 = call i32 @kfree(%struct.omap4_keypad* %36)
  ret i32 0
}

declare dso_local %struct.omap4_keypad* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.omap4_keypad*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.omap4_keypad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

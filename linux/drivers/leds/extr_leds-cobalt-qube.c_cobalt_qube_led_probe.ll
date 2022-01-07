; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cobalt-qube.c_cobalt_qube_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cobalt-qube.c_cobalt_qube_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@led_port = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LED_FRONT_LEFT = common dso_local global i32 0, align 4
@LED_FRONT_RIGHT = common dso_local global i32 0, align 4
@led_value = common dso_local global i32 0, align 4
@qube_front_led = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cobalt_qube_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_qube_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @IORESOURCE_MEM, align 4
  %7 = call %struct.resource* @platform_get_resource(%struct.platform_device* %5, i32 %6, i32 0)
  store %struct.resource* %7, %struct.resource** %4, align 8
  %8 = load %struct.resource*, %struct.resource** %4, align 8
  %9 = icmp ne %struct.resource* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.resource*, %struct.resource** %4, align 8
  %20 = call i32 @resource_size(%struct.resource* %19)
  %21 = call i32 @devm_ioremap(i32* %15, i32 %18, i32 %20)
  store i32 %21, i32* @led_port, align 4
  %22 = load i32, i32* @led_port, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %13
  %28 = load i32, i32* @LED_FRONT_LEFT, align 4
  %29 = load i32, i32* @LED_FRONT_RIGHT, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* @led_value, align 4
  %31 = load i32, i32* @led_value, align 4
  %32 = load i32, i32* @led_port, align 4
  %33 = call i32 @writeb(i32 %31, i32 %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @devm_led_classdev_register(i32* %35, i32* @qube_front_led)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %24, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

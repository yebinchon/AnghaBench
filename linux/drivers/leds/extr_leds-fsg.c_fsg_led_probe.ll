; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-fsg.c_fsg_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-fsg.c_fsg_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@latch_address = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@latch_value = common dso_local global i32 0, align 4
@fsg_wlan_led = common dso_local global i32 0, align 4
@fsg_wan_led = common dso_local global i32 0, align 4
@fsg_sata_led = common dso_local global i32 0, align 4
@fsg_usb_led = common dso_local global i32 0, align 4
@fsg_sync_led = common dso_local global i32 0, align 4
@fsg_ring_led = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsg_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call i32 @IXP4XX_EXP_BUS_BASE(i32 2)
  %8 = call i64 @devm_ioremap(i32* %6, i32 %7, i32 512)
  %9 = inttoptr i64 %8 to i16*
  %10 = bitcast i16* %9 to i32*
  store i32* %10, i32** @latch_address, align 8
  %11 = load i32*, i32** @latch_address, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %68

16:                                               ; preds = %1
  store i32 65535, i32* @latch_value, align 4
  %17 = load i32, i32* @latch_value, align 4
  %18 = load i32*, i32** @latch_address, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @devm_led_classdev_register(i32* %20, i32* @fsg_wlan_led)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %68

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @devm_led_classdev_register(i32* %28, i32* @fsg_wan_led)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %26
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @devm_led_classdev_register(i32* %36, i32* @fsg_sata_led)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %68

42:                                               ; preds = %34
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @devm_led_classdev_register(i32* %44, i32* @fsg_usb_led)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %68

50:                                               ; preds = %42
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @devm_led_classdev_register(i32* %52, i32* @fsg_sync_led)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %68

58:                                               ; preds = %50
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @devm_led_classdev_register(i32* %60, i32* @fsg_ring_led)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %64, %56, %48, %40, %32, %24, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @IXP4XX_EXP_BUS_BASE(i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

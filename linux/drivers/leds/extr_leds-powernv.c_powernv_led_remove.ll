; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-powernv.c_powernv_led_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-powernv.c_powernv_led_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.powernv_led_common = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"PowerNV led module unregistered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @powernv_led_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_led_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.powernv_led_common*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.powernv_led_common* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.powernv_led_common* %5, %struct.powernv_led_common** %3, align 8
  %6 = load %struct.powernv_led_common*, %struct.powernv_led_common** %3, align 8
  %7 = getelementptr inbounds %struct.powernv_led_common, %struct.powernv_led_common* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.powernv_led_common*, %struct.powernv_led_common** %3, align 8
  %9 = getelementptr inbounds %struct.powernv_led_common, %struct.powernv_led_common* %8, i32 0, i32 1
  %10 = call i32 @mutex_destroy(i32* %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @dev_info(i32* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.powernv_led_common* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

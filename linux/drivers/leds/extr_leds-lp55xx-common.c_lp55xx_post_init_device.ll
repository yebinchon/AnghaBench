; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_post_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_post_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { %struct.lp55xx_device_config* }
%struct.lp55xx_device_config = type { i32 (%struct.lp55xx_chip.0*)* }
%struct.lp55xx_chip.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp55xx_chip*)* @lp55xx_post_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp55xx_post_init_device(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca %struct.lp55xx_device_config*, align 8
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %3, align 8
  %5 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %6 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %5, i32 0, i32 0
  %7 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %6, align 8
  store %struct.lp55xx_device_config* %7, %struct.lp55xx_device_config** %4, align 8
  %8 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %4, align 8
  %9 = getelementptr inbounds %struct.lp55xx_device_config, %struct.lp55xx_device_config* %8, i32 0, i32 0
  %10 = load i32 (%struct.lp55xx_chip.0*)*, i32 (%struct.lp55xx_chip.0*)** %9, align 8
  %11 = icmp ne i32 (%struct.lp55xx_chip.0*)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %4, align 8
  %15 = getelementptr inbounds %struct.lp55xx_device_config, %struct.lp55xx_device_config* %14, i32 0, i32 0
  %16 = load i32 (%struct.lp55xx_chip.0*)*, i32 (%struct.lp55xx_chip.0*)** %15, align 8
  %17 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %18 = bitcast %struct.lp55xx_chip* %17 to %struct.lp55xx_chip.0*
  %19 = call i32 %16(%struct.lp55xx_chip.0* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

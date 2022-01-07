; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_unregister_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_unregister_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { %struct.lp55xx_device_config*, %struct.TYPE_2__* }
%struct.lp55xx_device_config = type { i32* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@lp55xx_engine_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lp55xx_unregister_sysfs(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca %struct.lp55xx_chip*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.lp55xx_device_config*, align 8
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %2, align 8
  %5 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %6 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %10 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %9, i32 0, i32 0
  %11 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %10, align 8
  store %struct.lp55xx_device_config* %11, %struct.lp55xx_device_config** %4, align 8
  %12 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %4, align 8
  %13 = getelementptr inbounds %struct.lp55xx_device_config, %struct.lp55xx_device_config* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %4, align 8
  %20 = getelementptr inbounds %struct.lp55xx_device_config, %struct.lp55xx_device_config* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @sysfs_remove_group(i32* %18, i32* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = call i32 @sysfs_remove_group(i32* %25, i32* @lp55xx_engine_attr_group)
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.device_driver = type { i32 }
%struct.i3c_device = type { i32 }
%struct.i3c_driver = type { i32 }

@i3c_device_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @i3c_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_device_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.i3c_device*, align 8
  %7 = alloca %struct.i3c_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, @i3c_device_type
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.i3c_device* @dev_to_i3cdev(%struct.device* %14)
  store %struct.i3c_device* %15, %struct.i3c_device** %6, align 8
  %16 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %17 = call %struct.i3c_driver* @drv_to_i3cdrv(%struct.device_driver* %16)
  store %struct.i3c_driver* %17, %struct.i3c_driver** %7, align 8
  %18 = load %struct.i3c_device*, %struct.i3c_device** %6, align 8
  %19 = load %struct.i3c_driver*, %struct.i3c_driver** %7, align 8
  %20 = getelementptr inbounds %struct.i3c_driver, %struct.i3c_driver* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @i3c_device_match_id(%struct.i3c_device* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.i3c_device* @dev_to_i3cdev(%struct.device*) #1

declare dso_local %struct.i3c_driver* @drv_to_i3cdrv(%struct.device_driver*) #1

declare dso_local i64 @i3c_device_match_id(%struct.i3c_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_uleds.c_uleds_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_uleds.c_uleds_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.uleds_device* }
%struct.uleds_device = type { i64, i32 }

@ULEDS_STATE_REGISTERED = common dso_local global i64 0, align 8
@ULEDS_STATE_UNKNOWN = common dso_local global i64 0, align 8
@uleds_misc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @uleds_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uleds_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.uleds_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.uleds_device*, %struct.uleds_device** %7, align 8
  store %struct.uleds_device* %8, %struct.uleds_device** %5, align 8
  %9 = load %struct.uleds_device*, %struct.uleds_device** %5, align 8
  %10 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ULEDS_STATE_REGISTERED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* @ULEDS_STATE_UNKNOWN, align 8
  %16 = load %struct.uleds_device*, %struct.uleds_device** %5, align 8
  %17 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uleds_misc, i32 0, i32 0), align 4
  %19 = load %struct.uleds_device*, %struct.uleds_device** %5, align 8
  %20 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %19, i32 0, i32 1
  %21 = call i32 @devm_led_classdev_unregister(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.uleds_device*, %struct.uleds_device** %5, align 8
  %24 = call i32 @kfree(%struct.uleds_device* %23)
  ret i32 0
}

declare dso_local i32 @devm_led_classdev_unregister(i32, i32*) #1

declare dso_local i32 @kfree(%struct.uleds_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

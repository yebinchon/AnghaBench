; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-netdev.c_netdev_trig_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-netdev.c_netdev_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.led_netdev_data = type { %struct.TYPE_2__, i64, i32, i64, i64*, i32*, %struct.led_classdev*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@netdev_trig_notify = common dso_local global i32 0, align 4
@netdev_trig_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @netdev_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.led_netdev_data*, align 8
  %5 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.led_netdev_data* @kzalloc(i32 64, i32 %6)
  store %struct.led_netdev_data* %7, %struct.led_netdev_data** %4, align 8
  %8 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %9 = icmp ne %struct.led_netdev_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %15 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %14, i32 0, i32 8
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load i32, i32* @netdev_trig_notify, align 4
  %18 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %19 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %22 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 10, i32* %23, align 8
  %24 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %25 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %24, i32 0, i32 7
  %26 = load i32, i32* @netdev_trig_work, align 4
  %27 = call i32 @INIT_DELAYED_WORK(i32* %25, i32 %26)
  %28 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %29 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %30 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %29, i32 0, i32 6
  store %struct.led_classdev* %28, %struct.led_classdev** %30, align 8
  %31 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %32 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %34 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %38 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %40 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %39, i32 0, i32 2
  %41 = call i32 @msecs_to_jiffies(i32 50)
  %42 = call i32 @atomic_set(i32* %40, i32 %41)
  %43 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %44 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %46 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %47 = call i32 @led_set_trigger_data(%struct.led_classdev* %45, %struct.led_netdev_data* %46)
  %48 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %49 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %48, i32 0, i32 0
  %50 = call i32 @register_netdevice_notifier(%struct.TYPE_2__* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %13
  %54 = load %struct.led_netdev_data*, %struct.led_netdev_data** %4, align 8
  %55 = call i32 @kfree(%struct.led_netdev_data* %54)
  br label %56

56:                                               ; preds = %53, %13
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.led_netdev_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @led_set_trigger_data(%struct.led_classdev*, %struct.led_netdev_data*) #1

declare dso_local i32 @register_netdevice_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.led_netdev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

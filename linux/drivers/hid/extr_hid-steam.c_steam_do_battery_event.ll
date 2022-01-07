; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_do_battery_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_do_battery_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.steam_device = type { i32, i32, i32, i32 }
%struct.power_supply = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.steam_device*, %struct.power_supply*, i32*)* @steam_do_battery_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steam_do_battery_event(%struct.steam_device* %0, %struct.power_supply* %1, i32* %2) #0 {
  %4 = alloca %struct.steam_device*, align 8
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.steam_device* %0, %struct.steam_device** %4, align 8
  store %struct.power_supply* %1, %struct.power_supply** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 12
  %12 = call i32 @steam_le16(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 14
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.steam_device*, %struct.steam_device** %4, align 8
  %18 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.power_supply* @rcu_dereference(i32 %19)
  store %struct.power_supply* %20, %struct.power_supply** %5, align 8
  %21 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %22 = call i64 @likely(%struct.power_supply* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %3
  %25 = load %struct.steam_device*, %struct.steam_device** %4, align 8
  %26 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.steam_device*, %struct.steam_device** %4, align 8
  %31 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.steam_device*, %struct.steam_device** %4, align 8
  %34 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.steam_device*, %struct.steam_device** %4, align 8
  %36 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %40 = call i32 @power_supply_changed(%struct.power_supply* %39)
  br label %41

41:                                               ; preds = %24, %3
  %42 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @steam_le16(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.power_supply* @rcu_dereference(i32) #1

declare dso_local i64 @likely(%struct.power_supply*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_client_ll_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_client_ll_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.steam_device* }
%struct.steam_device = type { i32, i32, i32, i32 }

@lizard_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @steam_client_ll_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steam_client_ll_close(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.steam_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = load %struct.steam_device*, %struct.steam_device** %7, align 8
  store %struct.steam_device* %8, %struct.steam_device** %3, align 8
  %9 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %10 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %9, i32 0, i32 3
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %14 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %17 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %16, i32 0, i32 3
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %21 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %24 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %29 = load i32, i32* @lizard_mode, align 4
  %30 = call i32 @steam_set_lizard_mode(%struct.steam_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %33 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %32, i32 0, i32 2
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %39 = call i32 @steam_input_register(%struct.steam_device* %38)
  br label %40

40:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @steam_set_lizard_mode(%struct.steam_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @steam_input_register(%struct.steam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

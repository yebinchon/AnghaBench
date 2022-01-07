; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64 }
%struct.steam_device = type { i32, i32, i32, i32 }

@HID_GROUP_STEAM = common dso_local global i64 0, align 8
@STEAM_QUIRK_WIRELESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Steam wireless receiver disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @steam_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steam_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.steam_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = call %struct.steam_device* @hid_get_drvdata(%struct.hid_device* %4)
  store %struct.steam_device* %5, %struct.steam_device** %3, align 8
  %6 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %7 = icmp ne %struct.steam_device* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %10 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HID_GROUP_STEAM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8, %1
  %15 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %16 = call i32 @hid_hw_stop(%struct.hid_device* %15)
  br label %43

17:                                               ; preds = %8
  %18 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %19 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hid_destroy_device(i32 %20)
  %22 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %23 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %25 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %24, i32 0, i32 2
  %26 = call i32 @cancel_work_sync(i32* %25)
  %27 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %28 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @STEAM_QUIRK_WIRELESS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %35 = call i32 @hid_info(%struct.hid_device* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %17
  %37 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %38 = call i32 @hid_hw_close(%struct.hid_device* %37)
  %39 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %40 = call i32 @hid_hw_stop(%struct.hid_device* %39)
  %41 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %42 = call i32 @steam_unregister(%struct.steam_device* %41)
  br label %43

43:                                               ; preds = %36, %14
  ret void
}

declare dso_local %struct.steam_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @hid_destroy_device(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

declare dso_local i32 @steam_unregister(%struct.steam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

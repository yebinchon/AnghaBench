; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.steam_device = type { i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"XXXXXXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Steam Controller '%s' connected\00", align 1
@STEAM_QUIRK_WIRELESS = common dso_local global i32 0, align 4
@steam_devices_lock = common dso_local global i32 0, align 4
@steam_devices = common dso_local global i32 0, align 4
@lizard_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.steam_device*)* @steam_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @steam_register(%struct.steam_device* %0) #0 {
  %2 = alloca %struct.steam_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.steam_device* %0, %struct.steam_device** %2, align 8
  %5 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %6 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %1
  %12 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %13 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %16 = call i64 @steam_get_serial(%struct.steam_device* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %20 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @strlcpy(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 8)
  br label %23

23:                                               ; preds = %18, %11
  %24 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %25 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %24, i32 0, i32 2
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %28 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %31 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @hid_info(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %35 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @STEAM_QUIRK_WIRELESS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %42 = call i32 @steam_battery_register(%struct.steam_device* %41)
  br label %43

43:                                               ; preds = %40, %23
  %44 = call i32 @mutex_lock(i32* @steam_devices_lock)
  %45 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %46 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %45, i32 0, i32 3
  %47 = call i32 @list_add(i32* %46, i32* @steam_devices)
  %48 = call i32 @mutex_unlock(i32* @steam_devices_lock)
  br label %49

49:                                               ; preds = %43, %1
  %50 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %51 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %50, i32 0, i32 2
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %54 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %60 = load i32, i32* @lizard_mode, align 4
  %61 = call i32 @steam_set_lizard_mode(%struct.steam_device* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %49
  %63 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %64 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %63, i32 0, i32 2
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %70 = call i32 @steam_input_register(%struct.steam_device* %69)
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @steam_get_serial(%struct.steam_device*) #1

declare dso_local i32 @strlcpy(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hid_info(i32, i8*, i32*) #1

declare dso_local i32 @steam_battery_register(%struct.steam_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @steam_set_lizard_mode(%struct.steam_device*, i32) #1

declare dso_local i32 @steam_input_register(%struct.steam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

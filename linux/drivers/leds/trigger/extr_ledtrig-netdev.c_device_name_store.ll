; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-netdev.c_device_name_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-netdev.c_device_name_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_netdev_data = type { i8*, i32, i64, i32, i32*, i32 }

@IFNAMSIZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@NETDEV_LED_MODE_LINKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @device_name_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @device_name_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_netdev_data*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.led_netdev_data* @led_trigger_get_drvdata(%struct.device* %11)
  store %struct.led_netdev_data* %12, %struct.led_netdev_data** %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @IFNAMSIZ, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %113

19:                                               ; preds = %4
  %20 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %21 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %20, i32 0, i32 5
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %24 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %27 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %32 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @dev_put(i32* %33)
  %35 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %36 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %19
  %38 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %39 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %45 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i64, i64* %9, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %37
  %52 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %53 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %63 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %61, %51, %37
  %69 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %70 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %78 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32* @dev_get_by_name(i32* @init_net, i8* %79)
  %81 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %82 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %68
  %84 = load i32, i32* @NETDEV_LED_MODE_LINKUP, align 4
  %85 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %86 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %85, i32 0, i32 3
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  %88 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %89 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %94 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @netif_carrier_ok(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* @NETDEV_LED_MODE_LINKUP, align 4
  %100 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %101 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %100, i32 0, i32 3
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %92
  br label %104

104:                                              ; preds = %103, %83
  %105 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %106 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %108 = call i32 @set_baseline_state(%struct.led_netdev_data* %107)
  %109 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %110 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %109, i32 0, i32 1
  %111 = call i32 @spin_unlock_bh(i32* %110)
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %5, align 8
  br label %113

113:                                              ; preds = %104, %16
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

declare dso_local %struct.led_netdev_data* @led_trigger_get_drvdata(%struct.device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @dev_get_by_name(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @netif_carrier_ok(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @set_baseline_state(%struct.led_netdev_data*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

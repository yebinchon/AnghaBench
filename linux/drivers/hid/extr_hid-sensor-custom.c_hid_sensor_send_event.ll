; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_send_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_sensor_custom = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, i8*)* @hid_sensor_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sensor_send_event(%struct.hid_sensor_hub_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_sensor_hub_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hid_sensor_custom*, align 8
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.hid_sensor_custom* @platform_get_drvdata(i8* %9)
  store %struct.hid_sensor_custom* %10, %struct.hid_sensor_custom** %8, align 8
  %11 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %8, align 8
  %12 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %11, i32 0, i32 3
  %13 = call i32 @test_bit(i32 0, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %8, align 8
  %18 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %8, align 8
  %20 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %8, align 8
  %22 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %21, i32 0, i32 1
  %23 = call i32 @wake_up(i32* %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.hid_sensor_custom* @platform_get_drvdata(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_apanel.c_apanel_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_apanel.c_apanel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.apanel = type { i32, i32 }

@device_chip = common dso_local global i64* null, align 8
@APANEL_DEV_LED = common dso_local global i64 0, align 8
@CHIP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @apanel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apanel_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.apanel*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.apanel* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.apanel* %5, %struct.apanel** %3, align 8
  %6 = load i64*, i64** @device_chip, align 8
  %7 = load i64, i64* @APANEL_DEV_LED, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHIP_NONE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.apanel*, %struct.apanel** %3, align 8
  %14 = getelementptr inbounds %struct.apanel, %struct.apanel* %13, i32 0, i32 1
  %15 = call i32 @led_classdev_unregister(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.apanel*, %struct.apanel** %3, align 8
  %18 = getelementptr inbounds %struct.apanel, %struct.apanel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @input_unregister_polled_device(i32 %19)
  %21 = load %struct.apanel*, %struct.apanel** %3, align 8
  %22 = getelementptr inbounds %struct.apanel, %struct.apanel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @input_free_polled_device(i32 %23)
  ret i32 0
}

declare dso_local %struct.apanel* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @input_unregister_polled_device(i32) #1

declare dso_local i32 @input_free_polled_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_tca6507_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_tca6507_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tca6507_chip = type { i32, %struct.tca6507_led* }
%struct.tca6507_led = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NUM_LEDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tca6507_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca6507_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tca6507_chip*, align 8
  %5 = alloca %struct.tca6507_led*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.tca6507_chip* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.tca6507_chip* %7, %struct.tca6507_chip** %4, align 8
  %8 = load %struct.tca6507_chip*, %struct.tca6507_chip** %4, align 8
  %9 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %8, i32 0, i32 1
  %10 = load %struct.tca6507_led*, %struct.tca6507_led** %9, align 8
  store %struct.tca6507_led* %10, %struct.tca6507_led** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NUM_LEDS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load %struct.tca6507_led*, %struct.tca6507_led** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %16, i64 %18
  %20 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.tca6507_led*, %struct.tca6507_led** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %25, i64 %27
  %29 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %28, i32 0, i32 0
  %30 = call i32 @led_classdev_unregister(%struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %24, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.tca6507_chip*, %struct.tca6507_chip** %4, align 8
  %37 = call i32 @tca6507_remove_gpio(%struct.tca6507_chip* %36)
  %38 = load %struct.tca6507_chip*, %struct.tca6507_chip** %4, align 8
  %39 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %38, i32 0, i32 0
  %40 = call i32 @cancel_work_sync(i32* %39)
  ret i32 0
}

declare dso_local %struct.tca6507_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @tca6507_remove_gpio(%struct.tca6507_chip*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

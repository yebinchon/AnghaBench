; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3944.c_lp3944_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3944.c_lp3944_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lp3944_platform_data = type { i32 }
%struct.lp3944_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lp3944_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3944_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lp3944_platform_data*, align 8
  %4 = alloca %struct.lp3944_data*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call %struct.lp3944_platform_data* @dev_get_platdata(i32* %7)
  store %struct.lp3944_platform_data* %8, %struct.lp3944_platform_data** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = call %struct.lp3944_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.lp3944_data* %10, %struct.lp3944_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %38, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.lp3944_platform_data*, %struct.lp3944_platform_data** %3, align 8
  %14 = getelementptr inbounds %struct.lp3944_platform_data, %struct.lp3944_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.lp3944_data*, %struct.lp3944_data** %4, align 8
  %19 = getelementptr inbounds %struct.lp3944_data, %struct.lp3944_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %36 [
    i32 130, label %26
    i32 129, label %26
    i32 128, label %35
  ]

26:                                               ; preds = %17, %17
  %27 = load %struct.lp3944_data*, %struct.lp3944_data** %4, align 8
  %28 = getelementptr inbounds %struct.lp3944_data, %struct.lp3944_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @led_classdev_unregister(i32* %33)
  br label %37

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %17, %35
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %11

41:                                               ; preds = %11
  ret i32 0
}

declare dso_local %struct.lp3944_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.lp3944_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

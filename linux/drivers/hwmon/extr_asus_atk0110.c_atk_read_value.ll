; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_read_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_sensor_data = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@CACHE_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_sensor_data*, i32*)* @atk_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_read_value(%struct.atk_sensor_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atk_sensor_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.atk_sensor_data* %0, %struct.atk_sensor_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %8 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %14 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CACHE_TIME, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @time_after(i64 %12, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %11, %2
  %21 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %22 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @atk_read_value_old(%struct.atk_sensor_data* %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @atk_read_value_new(%struct.atk_sensor_data* %32, i32* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %35
  %41 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %42 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i64, i64* @jiffies, align 8
  %44 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %45 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %49 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %55

50:                                               ; preds = %11
  %51 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %52 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %40
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %38
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @atk_read_value_old(%struct.atk_sensor_data*, i32*) #1

declare dso_local i32 @atk_read_value_new(%struct.atk_sensor_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

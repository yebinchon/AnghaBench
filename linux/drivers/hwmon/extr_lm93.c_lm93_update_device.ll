; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm93_data = type { i32, i32, i64, i32 (%struct.lm93_data*, %struct.i2c_client*)*, %struct.i2c_client.0* }
%struct.i2c_client = type opaque
%struct.i2c_client.0 = type { i32 }
%struct.device = type { i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm93_data* (%struct.device*)* @lm93_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm93_data* @lm93_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lm93_data*, align 8
  %4 = alloca %struct.i2c_client.0*, align 8
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.lm93_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.lm93_data* %7, %struct.lm93_data** %3, align 8
  %8 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %8, i32 0, i32 4
  %10 = load %struct.i2c_client.0*, %struct.i2c_client.0** %9, align 8
  store %struct.i2c_client.0* %10, %struct.i2c_client.0** %4, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = load i32, i32* @HZ, align 4
  %13 = sdiv i32 %12, 2
  %14 = add nsw i32 %11, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %17 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %21 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %22, %23
  %25 = call i64 @time_after(i64 %19, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %29 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %34 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %33, i32 0, i32 3
  %35 = load i32 (%struct.lm93_data*, %struct.i2c_client*)*, i32 (%struct.lm93_data*, %struct.i2c_client*)** %34, align 8
  %36 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %37 = load %struct.i2c_client.0*, %struct.i2c_client.0** %4, align 8
  %38 = bitcast %struct.i2c_client.0* %37 to %struct.i2c_client*
  %39 = call i32 %35(%struct.lm93_data* %36, %struct.i2c_client* %38)
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %42 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %44 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %32, %27
  %46 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %47 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  ret %struct.lm93_data* %49
}

declare dso_local %struct.lm93_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

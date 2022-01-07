; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7475_data = type { i32, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adt7475_data* (%struct.device*)* @adt7475_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adt7475_data* @adt7475_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.adt7475_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.adt7475_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.adt7475_data* %7, %struct.adt7475_data** %4, align 8
  %8 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %9 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %13 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = call i64 @time_after(i64 %11, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %23 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 @adt7475_update_measure(%struct.device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %33 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %35 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.adt7475_data* @ERR_PTR(i32 %37)
  store %struct.adt7475_data* %38, %struct.adt7475_data** %2, align 8
  br label %50

39:                                               ; preds = %26
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %42 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %44 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %21
  %46 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %47 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  store %struct.adt7475_data* %49, %struct.adt7475_data** %2, align 8
  br label %50

50:                                               ; preds = %45, %31
  %51 = load %struct.adt7475_data*, %struct.adt7475_data** %2, align 8
  ret %struct.adt7475_data* %51
}

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @adt7475_update_measure(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.adt7475_data* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

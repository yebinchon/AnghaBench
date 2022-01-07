; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_find_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_find_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_sensor = type { i32, i32, %struct.pmbus_sensor* }
%struct.pmbus_data = type { %struct.pmbus_sensor* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmbus_sensor* (%struct.pmbus_data*, i32, i32)* @pmbus_find_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmbus_sensor* @pmbus_find_sensor(%struct.pmbus_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pmbus_sensor*, align 8
  %5 = alloca %struct.pmbus_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmbus_sensor*, align 8
  store %struct.pmbus_data* %0, %struct.pmbus_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %10 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %9, i32 0, i32 0
  %11 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %10, align 8
  store %struct.pmbus_sensor* %11, %struct.pmbus_sensor** %8, align 8
  br label %12

12:                                               ; preds = %30, %3
  %13 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %14 = icmp ne %struct.pmbus_sensor* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %17 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %23 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  store %struct.pmbus_sensor* %28, %struct.pmbus_sensor** %4, align 8
  br label %38

29:                                               ; preds = %21, %15
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %32 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %31, i32 0, i32 2
  %33 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %32, align 8
  store %struct.pmbus_sensor* %33, %struct.pmbus_sensor** %8, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.pmbus_sensor* @ERR_PTR(i32 %36)
  store %struct.pmbus_sensor* %37, %struct.pmbus_sensor** %4, align 8
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  ret %struct.pmbus_sensor* %39
}

declare dso_local %struct.pmbus_sensor* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

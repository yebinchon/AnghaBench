; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_reg2data_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_reg2data_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pmbus_sensor = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pmbus_data*, %struct.pmbus_sensor*)* @pmbus_reg2data_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmbus_reg2data_vid(%struct.pmbus_data* %0, %struct.pmbus_sensor* %1) #0 {
  %3 = alloca %struct.pmbus_data*, align 8
  %4 = alloca %struct.pmbus_sensor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pmbus_data* %0, %struct.pmbus_data** %3, align 8
  store %struct.pmbus_sensor* %1, %struct.pmbus_sensor** %4, align 8
  %7 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %4, align 8
  %8 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.pmbus_data*, %struct.pmbus_data** %3, align 8
  %11 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %47 [
    i32 130, label %15
    i32 129, label %29
    i32 128, label %38
  ]

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp sge i64 %16, 2
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %19, 178
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %22, 2
  %24 = mul nsw i64 %23, 625
  %25 = sub nsw i64 160000, %24
  %26 = trunc i64 %25 to i32
  %27 = call i64 @DIV_ROUND_CLOSEST(i32 %26, i32 100)
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %21, %18, %15
  br label %47

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = icmp sge i64 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = sub nsw i64 %33, 1
  %35 = mul nsw i64 %34, 5
  %36 = add nsw i64 250, %35
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %32, %29
  br label %47

38:                                               ; preds = %2
  %39 = load i64, i64* %5, align 8
  %40 = icmp sge i64 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 %42, 1
  %44 = mul nsw i64 %43, 10
  %45 = add nsw i64 500, %44
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %2, %46, %37, %28
  %48 = load i64, i64* %6, align 8
  ret i64 %48
}

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

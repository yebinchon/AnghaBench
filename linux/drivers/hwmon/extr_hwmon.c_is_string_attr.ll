; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_is_string_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_is_string_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwmon_temp = common dso_local global i32 0, align 4
@hwmon_temp_label = common dso_local global i64 0, align 8
@hwmon_in = common dso_local global i32 0, align 4
@hwmon_in_label = common dso_local global i64 0, align 8
@hwmon_curr = common dso_local global i32 0, align 4
@hwmon_curr_label = common dso_local global i64 0, align 8
@hwmon_power = common dso_local global i32 0, align 4
@hwmon_power_label = common dso_local global i64 0, align 8
@hwmon_energy = common dso_local global i32 0, align 4
@hwmon_energy_label = common dso_local global i64 0, align 8
@hwmon_humidity = common dso_local global i32 0, align 4
@hwmon_humidity_label = common dso_local global i64 0, align 8
@hwmon_fan = common dso_local global i32 0, align 4
@hwmon_fan_label = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @is_string_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_string_attr(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @hwmon_temp, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @hwmon_temp_label, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %62, label %12

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @hwmon_in, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @hwmon_in_label, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %62, label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @hwmon_curr, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @hwmon_curr_label, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %62, label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @hwmon_power, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @hwmon_power_label, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %62, label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @hwmon_energy, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @hwmon_energy_label, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @hwmon_humidity, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @hwmon_humidity_label, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @hwmon_fan, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @hwmon_fan_label, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br label %62

62:                                               ; preds = %60, %48, %40, %32, %24, %16, %8
  %63 = phi i1 [ true, %48 ], [ true, %40 ], [ true, %32 ], [ true, %24 ], [ true, %16 ], [ true, %8 ], [ %61, %60 ]
  %64 = zext i1 %63 to i32
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_get_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_get_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vz89x_data = type { i32, i32 (%struct.vz89x_data*, i32)*, i64, %struct.vz89x_chip_data* }
%struct.vz89x_chip_data = type { {}*, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vz89x_data*)* @vz89x_get_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vz89x_get_measurement(%struct.vz89x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vz89x_data*, align 8
  %4 = alloca %struct.vz89x_chip_data*, align 8
  %5 = alloca i32, align 4
  store %struct.vz89x_data* %0, %struct.vz89x_data** %3, align 8
  %6 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %7 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %6, i32 0, i32 3
  %8 = load %struct.vz89x_chip_data*, %struct.vz89x_chip_data** %7, align 8
  store %struct.vz89x_chip_data* %8, %struct.vz89x_chip_data** %4, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %11 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HZ, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @time_after(i64 %9, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %19 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 0, %22 ], [ %25, %23 ]
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %1
  %29 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %30 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %33 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %35 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %34, i32 0, i32 1
  %36 = load i32 (%struct.vz89x_data*, i32)*, i32 (%struct.vz89x_data*, i32)** %35, align 8
  %37 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %38 = load %struct.vz89x_chip_data*, %struct.vz89x_chip_data** %4, align 8
  %39 = getelementptr inbounds %struct.vz89x_chip_data, %struct.vz89x_chip_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %36(%struct.vz89x_data* %37, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %28
  %47 = load %struct.vz89x_chip_data*, %struct.vz89x_chip_data** %4, align 8
  %48 = getelementptr inbounds %struct.vz89x_chip_data, %struct.vz89x_chip_data* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.vz89x_data*)**
  %50 = load i32 (%struct.vz89x_data*)*, i32 (%struct.vz89x_data*)** %49, align 8
  %51 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %52 = call i32 %50(%struct.vz89x_data* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %46
  %59 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %60 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %55, %44, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

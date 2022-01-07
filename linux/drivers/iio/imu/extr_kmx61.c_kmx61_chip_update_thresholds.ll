; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_chip_update_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_chip_update_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KMX61_REG_WUF_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Errow writing reg_wuf_timer\0A\00", align 1
@KMX61_REG_WUF_THRESH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error writing reg_wuf_thresh\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmx61_data*)* @kmx61_chip_update_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_chip_update_thresholds(%struct.kmx61_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmx61_data*, align 8
  %4 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %3, align 8
  %5 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %6 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* @KMX61_REG_WUF_TIMER, align 4
  %9 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %10 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %7, i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %17 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %24 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* @KMX61_REG_WUF_THRESH, align 4
  %27 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %28 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %25, i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %35 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %22
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

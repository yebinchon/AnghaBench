; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mms114_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@MMS152_FW_REV = common dso_local global i32 0, align 4
@MMS152_COMPAT_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"TSP FW Rev: bootloader 0x%x / core 0x%x / config 0x%x, Compat group: %c\0A\00", align 1
@MMS114_TSP_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"TSP Rev: 0x%x, HW Rev: 0x%x, Firmware Ver: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mms114_data*)* @mms114_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms114_get_version(%struct.mms114_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mms114_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mms114_data* %0, %struct.mms114_data** %3, align 8
  %8 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %9 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %13 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %62 [
    i32 128, label %15
    i32 129, label %44
  ]

15:                                               ; preds = %1
  %16 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %17 = load i32, i32* @MMS152_FW_REV, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %19 = call i32 @__mms114_read_reg(%struct.mms114_data* %16, i32 %17, i32 3, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %15
  %25 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %26 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* @MMS152_COMPAT_GROUP, align 4
  %29 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %63

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_info(%struct.device* %35, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39, i32 %41, i32 %42)
  br label %62

44:                                               ; preds = %1
  %45 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %46 = load i32, i32* @MMS114_TSP_REV, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %48 = call i32 @__mms114_read_reg(%struct.mms114_data* %45, i32 %46, i32 6, i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %63

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_info(%struct.device* %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %1, %53, %34
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %51, %32, %22
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @__mms114_read_reg(%struct.mms114_data*, i32, i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

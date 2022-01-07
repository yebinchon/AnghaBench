; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_f75375_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_f75375_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@F75375_REG_VENDOR = common dso_local global i32 0, align 4
@F75375_CHIP_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"f75375\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"f75373\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"f75387\00", align 1
@F75375_REG_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"found %s version: %02X\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @f75375_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f75375_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load i32, i32* @F75375_REG_VENDOR, align 4
  %16 = call i32 @f75375_read16(%struct.i2c_client* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* @F75375_CHIP_ID, align 4
  %19 = call i32 @f75375_read16(%struct.i2c_client* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 6452
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 774
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %42

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 516
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %41

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 1040
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %32
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* @F75375_REG_VERSION, align 4
  %45 = call i32 @f75375_read8(%struct.i2c_client* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 0
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %49)
  %51 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @I2C_NAME_SIZE, align 4
  %56 = call i32 @strlcpy(i32 %53, i8* %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %42, %37, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @f75375_read16(%struct.i2c_client*, i32) #1

declare dso_local i32 @f75375_read8(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_smbus.c_elan_smbus_get_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_smbus.c_elan_smbus_get_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@ETP_SMBUS_REPORT_LEN = common dso_local global i32 0, align 4
@ETP_SMBUS_PACKET_QUERY = common dso_local global i32 0, align 4
@ETP_SMBUS_REPORT_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to read report data: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"wrong report length (%d vs %d expected)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*)* @elan_smbus_get_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_smbus_get_report(%struct.i2c_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %8 = load i32, i32* @ETP_SMBUS_REPORT_LEN, align 4
  %9 = icmp sgt i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUILD_BUG_ON(i32 %10)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = load i32, i32* @ETP_SMBUS_PACKET_QUERY, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* @ETP_SMBUS_REPORT_OFFSET, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %12, i32 %13, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ETP_SMBUS_REPORT_LEN, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ETP_SMBUS_REPORT_LEN, align 4
  %35 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %30, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

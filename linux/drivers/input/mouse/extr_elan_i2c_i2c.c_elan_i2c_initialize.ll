; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }

@ETP_I2C_STAND_CMD = common dso_local global i32 0, align 4
@ETP_I2C_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"device reset failed: %d\0A\00", align 1
@ETP_I2C_INF_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to read reset response: %d\0A\00", align 1
@ETP_I2C_DESC_CMD = common dso_local global i32 0, align 4
@ETP_I2C_DESC_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot get device descriptor: %d\0A\00", align 1
@ETP_I2C_REPORT_DESC_CMD = common dso_local global i32 0, align 4
@ETP_I2C_REPORT_DESC_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"fetching report descriptor failed.: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @elan_i2c_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_i2c_initialize(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i32], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = load i32, i32* @ETP_I2C_STAND_CMD, align 4
  %11 = load i32, i32* @ETP_I2C_RESET, align 4
  %12 = call i32 @elan_i2c_write_cmd(%struct.i2c_client* %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %1
  %21 = call i32 @msleep(i32 100)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %24 = load i32, i32* @ETP_I2C_INF_LENGTH, align 4
  %25 = call i32 @i2c_master_recv(%struct.i2c_client* %22, i32* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %20
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* @ETP_I2C_DESC_CMD, align 4
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* @ETP_I2C_DESC_LENGTH, align 4
  %38 = call i32 @elan_i2c_read_block(%struct.i2c_client* %34, i32 %35, i32* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %60

46:                                               ; preds = %33
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load i32, i32* @ETP_I2C_REPORT_DESC_CMD, align 4
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %50 = load i32, i32* @ETP_I2C_REPORT_DESC_LENGTH, align 4
  %51 = call i32 @elan_i2c_read_block(%struct.i2c_client* %47, i32 %48, i32* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %54, %41, %28, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @elan_i2c_write_cmd(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @elan_i2c_read_block(%struct.i2c_client*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

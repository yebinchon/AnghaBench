; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1070.c_qt1070_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1070.c_qt1070_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@CHIP_ID = common dso_local global i32 0, align 4
@QT1070_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ID %d not supported\0A\00", align 1
@FW_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not read the firmware version\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"AT42QT1070 firmware version %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @qt1070_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1070_identify(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = load i32, i32* @CHIP_ID, align 4
  %8 = call i32 @qt1070_read(%struct.i2c_client* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @QT1070_CHIP_ID, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = load i32, i32* @FW_VERSION, align 4
  %20 = call i32 @qt1070_read(%struct.i2c_client* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %23, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @qt1070_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

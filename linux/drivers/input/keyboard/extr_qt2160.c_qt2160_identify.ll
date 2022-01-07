; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt2160.c_qt2160_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt2160.c_qt2160_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@QT2160_CMD_CHIPID = common dso_local global i32 0, align 4
@QT2160_VALID_CHIPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ID %d not supported\0A\00", align 1
@QT2160_CMD_CODEVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not get firmware version\0A\00", align 1
@QT2160_CMD_SUBVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"could not get firmware revision\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"AT42QT2160 firmware version %d.%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @qt2160_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2160_identify(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = load i32, i32* @QT2160_CMD_CHIPID, align 4
  %9 = call i32 @qt2160_read(%struct.i2c_client* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QT2160_VALID_CHIPID, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load i32, i32* @QT2160_CMD_CODEVER, align 4
  %21 = call i32 @qt2160_read(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

28:                                               ; preds = %18
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load i32, i32* @QT2160_CMD_SUBVER, align 4
  %31 = call i32 @qt2160_read(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

38:                                               ; preds = %28
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 15
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %44, i32 %45)
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %38, %34, %24, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @qt2160_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { %struct.zforce_ts_platdata*, %struct.i2c_client* }
%struct.zforce_ts_platdata = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"starting device\0A\00", align 1
@COMMAND_INITIALIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to initialize, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to set resolution, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unable to set scan frequency, %d\0A\00", align 1
@SETCONFIG_DUALTOUCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Unable to set config\0A\00", align 1
@COMMAND_DATAREQUEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unable to request data\0A\00", align 1
@COMMAND_DEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zforce_ts*)* @zforce_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_start(%struct.zforce_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zforce_ts*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.zforce_ts_platdata*, align 8
  %6 = alloca i32, align 4
  store %struct.zforce_ts* %0, %struct.zforce_ts** %3, align 8
  %7 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %8 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %7, i32 0, i32 1
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %11 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %10, i32 0, i32 0
  %12 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %11, align 8
  store %struct.zforce_ts_platdata* %12, %struct.zforce_ts_platdata** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %17 = load i32, i32* @COMMAND_INITIALIZE, align 4
  %18 = call i32 @zforce_command_wait(%struct.zforce_ts* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %80

27:                                               ; preds = %1
  %28 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %29 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %5, align 8
  %30 = getelementptr inbounds %struct.zforce_ts_platdata, %struct.zforce_ts_platdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %5, align 8
  %33 = getelementptr inbounds %struct.zforce_ts_platdata, %struct.zforce_ts_platdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @zforce_resolution(%struct.zforce_ts* %28, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %75

43:                                               ; preds = %27
  %44 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %45 = call i32 @zforce_scan_frequency(%struct.zforce_ts* %44, i32 10, i32 50, i32 50)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %75

53:                                               ; preds = %43
  %54 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %55 = load i32, i32* @SETCONFIG_DUALTOUCH, align 4
  %56 = call i32 @zforce_setconfig(%struct.zforce_ts* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %75

63:                                               ; preds = %53
  %64 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %65 = load i32, i32* @COMMAND_DATAREQUEST, align 4
  %66 = call i32 @zforce_command(%struct.zforce_ts* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %75

73:                                               ; preds = %63
  %74 = call i32 @msleep(i32 200)
  store i32 0, i32* %2, align 4
  br label %80

75:                                               ; preds = %69, %59, %48, %38
  %76 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %77 = load i32, i32* @COMMAND_DEACTIVATE, align 4
  %78 = call i32 @zforce_command_wait(%struct.zforce_ts* %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %73, %21
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @zforce_command_wait(%struct.zforce_ts*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @zforce_resolution(%struct.zforce_ts*, i32, i32) #1

declare dso_local i32 @zforce_scan_frequency(%struct.zforce_ts*, i32, i32, i32) #1

declare dso_local i32 @zforce_setconfig(%struct.zforce_ts*, i32) #1

declare dso_local i32 @zforce_command(%struct.zforce_ts*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

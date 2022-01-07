; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_do_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_do_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cyapa = type { i32 }

@CYAPA_CMD_DEV_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error reading dev status: %d\0A\00", align 1
@CYAPA_DEV_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Trackpad device is busy, device state: 0x%02x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CYAPA_CMD_SOFT_RESET = common dso_local global i32 0, align 4
@OP_RECALIBRATION_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to send calibrate command: %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Calibration successful.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to calibrate. Timeout.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cyapa_gen3_do_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_do_calibrate(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cyapa*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.cyapa* @dev_get_drvdata(%struct.device* %12)
  store %struct.cyapa* %13, %struct.cyapa** %9, align 8
  %14 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %15 = load i32, i32* @CYAPA_CMD_DEV_STATUS, align 4
  %16 = call i32 @cyapa_read_byte(%struct.cyapa* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %82

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %82

35:                                               ; preds = %23
  %36 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %37 = load i32, i32* @CYAPA_CMD_SOFT_RESET, align 4
  %38 = load i32, i32* @OP_RECALIBRATION_MASK, align 4
  %39 = call i32 @cyapa_write_byte(%struct.cyapa* %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %82

46:                                               ; preds = %35
  %47 = load i32, i32* @jiffies, align 4
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 2, %48
  %50 = add nsw i32 %47, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %73, %46
  %53 = call i32 @msleep(i32 100)
  %54 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %55 = load i32, i32* @CYAPA_CMD_DEV_STATUS, align 4
  %56 = call i32 @cyapa_read_byte(%struct.cyapa* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %82

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @dev_dbg(%struct.device* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %82

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @time_is_after_jiffies(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %52, label %77

77:                                               ; preds = %73
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %77, %69, %59, %42, %29, %19
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  br label %90

88:                                               ; preds = %82
  %89 = load i64, i64* %8, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i64 [ %87, %85 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  ret i32 %92
}

declare dso_local %struct.cyapa* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cyapa_read_byte(%struct.cyapa*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @cyapa_write_byte(%struct.cyapa*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

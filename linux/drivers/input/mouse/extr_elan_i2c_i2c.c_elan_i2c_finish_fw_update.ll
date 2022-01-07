; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_finish_fw_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_finish_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.completion = type { i32 }

@ETP_I2C_REPORT_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"failed to read I2C data after FW WDT reset: %d (%d)\0A\00", align 1
@ETP_I2C_STAND_CMD = common dso_local global i32 0, align 4
@ETP_I2C_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"device reset failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"timeout waiting for device reset\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ETP_I2C_INF_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to read INT signal: %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.completion*)* @elan_i2c_finish_fw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_i2c_finish_fw_update(%struct.i2c_client* %0, %struct.completion* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.completion*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.completion* %1, %struct.completion** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i32, i32* @ETP_I2C_REPORT_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load i32, i32* @ETP_I2C_REPORT_LEN, align 4
  %20 = call i32 @i2c_master_recv(%struct.i2c_client* %18, i32* %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ETP_I2C_REPORT_LEN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %31, %29 ]
  store i32 %33, i32* %7, align 4
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_warn(%struct.device* %34, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.completion*, %struct.completion** %5, align 8
  %40 = call i32 @reinit_completion(%struct.completion* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @enable_irq(i32 %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* @ETP_I2C_STAND_CMD, align 4
  %47 = load i32, i32* @ETP_I2C_RESET, align 4
  %48 = call i32 @elan_i2c_write_cmd(%struct.i2c_client* %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %66

55:                                               ; preds = %38
  %56 = load %struct.completion*, %struct.completion** %5, align 8
  %57 = call i32 @msecs_to_jiffies(i32 300)
  %58 = call i32 @wait_for_completion_timeout(%struct.completion* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %51
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @disable_irq(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %98

75:                                               ; preds = %66
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load i32, i32* @ETP_I2C_INF_LENGTH, align 4
  %78 = call i32 @i2c_master_recv(%struct.i2c_client* %76, i32* %17, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @ETP_I2C_INF_LENGTH, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  br label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  br label %90

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %86, %85 ], [ %89, %87 ]
  store i32 %91, i32* %7, align 4
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %98

97:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %90, %73
  %99 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #2

declare dso_local i32 @reinit_completion(%struct.completion*) #2

declare dso_local i32 @enable_irq(i32) #2

declare dso_local i32 @elan_i2c_write_cmd(%struct.i2c_client*, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @disable_irq(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

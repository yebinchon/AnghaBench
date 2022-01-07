; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elants_data = type { i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }

@elants_i2c_calibrate.w_flashkey = internal constant [4 x i32] [i32 84, i32 192, i32 225, i32 90], align 16
@elants_i2c_calibrate.rek = internal constant [4 x i32] [i32 84, i32 41, i32 0, i32 1], align 16
@elants_i2c_calibrate.rek_resp = internal constant [4 x i32] [i32 128, i32 102, i32 102, i32 102], align 16
@ELAN_WAIT_RECALIBRATION = common dso_local global i32 0, align 4
@ELAN_CALI_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@ELAN_STATE_NORMAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"error while waiting for calibration to complete: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"unexpected calibration response: %*ph\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elants_data*)* @elants_i2c_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_calibrate(%struct.elants_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elants_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.elants_data* %0, %struct.elants_data** %3, align 8
  %7 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %8 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %7, i32 0, i32 3
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @disable_irq(i32 %12)
  %14 = load i32, i32* @ELAN_WAIT_RECALIBRATION, align 4
  %15 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %16 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %18 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %17, i32 0, i32 2
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i32 @elants_i2c_send(%struct.i2c_client* %20, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @elants_i2c_calibrate.w_flashkey, i64 0, i64 0), i32 16)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @elants_i2c_send(%struct.i2c_client* %22, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @elants_i2c_calibrate.rek, i64 0, i64 0), i32 16)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @enable_irq(i32 %26)
  %28 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %29 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %28, i32 0, i32 2
  %30 = load i32, i32* @ELAN_CALI_TIMEOUT_MSEC, align 4
  %31 = call i32 @msecs_to_jiffies(i32 %30)
  %32 = call i32 @wait_for_completion_interruptible_timeout(i32* %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @ELAN_STATE_NORMAL, align 4
  %34 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %35 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  store i32 %47, i32* %6, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %69

53:                                               ; preds = %1
  %54 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %55 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @memcmp(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @elants_i2c_calibrate.rek_resp, i64 0, i64 0), i32 %56, i32 16)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %63 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %59, %46
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @elants_i2c_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

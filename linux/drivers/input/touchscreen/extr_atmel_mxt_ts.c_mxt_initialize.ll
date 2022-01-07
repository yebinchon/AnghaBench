; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Trying alternate bootloader address\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not recover from bootloader mode\0A\00", align 1
@MXT_FW_RESET_TIME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MXT_CFG_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mxt_config_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to invoke firmware loader: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_initialize(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %7 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %8 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %7, i32 0, i32 1
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %1, %42
  %11 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %12 = call i32 @mxt_read_info_block(%struct.mxt_data* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %47

16:                                               ; preds = %10
  %17 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %18 = call i32 @mxt_probe_bootloader(%struct.mxt_data* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %26 = call i32 @mxt_probe_bootloader(%struct.mxt_data* %25, i32 1)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %41 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %72

42:                                               ; preds = %32
  %43 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %44 = call i32 @mxt_send_bootloader_cmd(%struct.mxt_data* %43, i32 0)
  %45 = load i32, i32* @MXT_FW_RESET_TIME, align 4
  %46 = call i32 @msleep(i32 %45)
  br label %10

47:                                               ; preds = %15
  %48 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %49 = call i32 @mxt_acquire_irq(%struct.mxt_data* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %47
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = load i32, i32* @MXT_CFG_NAME, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %61 = load i32, i32* @mxt_config_cb, align 4
  %62 = call i32 @request_firmware_nowait(i32 %55, i32 1, i32 %56, i32* %58, i32 %59, %struct.mxt_data* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %65, %52, %36, %29
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mxt_read_info_block(%struct.mxt_data*) #1

declare dso_local i32 @mxt_probe_bootloader(%struct.mxt_data*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mxt_send_bootloader_cmd(%struct.mxt_data*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mxt_acquire_irq(%struct.mxt_data*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, i32*, i32, %struct.mxt_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

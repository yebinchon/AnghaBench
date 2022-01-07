; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm70.c_temp1_input_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm70.c_temp1_input_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm70 = type { i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"spi_write_then_read failed with status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"rxbuf[0] : 0x%02x rxbuf[1] : 0x%02x raw=0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_input_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp1_input_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lm70*, align 8
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.lm70* @dev_get_drvdata(%struct.device* %14)
  store %struct.lm70* %15, %struct.lm70** %8, align 8
  %16 = load %struct.lm70*, %struct.lm70** %8, align 8
  %17 = getelementptr inbounds %struct.lm70, %struct.lm70* %16, i32 0, i32 2
  %18 = load %struct.spi_device*, %struct.spi_device** %17, align 8
  store %struct.spi_device* %18, %struct.spi_device** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.lm70*, %struct.lm70** %8, align 8
  %20 = getelementptr inbounds %struct.lm70, %struct.lm70* %19, i32 0, i32 1
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ERESTARTSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %3
  %27 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %29 = call i32 @spi_write_then_read(%struct.spi_device* %27, i32* null, i32 0, i32* %28, i32 2)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %71

36:                                               ; preds = %26
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %13, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47, i32 %48)
  %50 = load %struct.lm70*, %struct.lm70** %8, align 8
  %51 = getelementptr inbounds %struct.lm70, %struct.lm70* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %67 [
    i32 132, label %53
    i32 129, label %57
    i32 128, label %57
    i32 130, label %57
    i32 131, label %62
  ]

53:                                               ; preds = %36
  %54 = load i32, i32* %13, align 4
  %55 = sdiv i32 %54, 32
  %56 = mul nsw i32 %55, 250
  store i32 %56, i32* %11, align 4
  br label %67

57:                                               ; preds = %36, %36, %36
  %58 = load i32, i32* %13, align 4
  %59 = sdiv i32 %58, 8
  %60 = mul nsw i32 %59, 625
  %61 = sdiv i32 %60, 10
  store i32 %61, i32* %11, align 4
  br label %67

62:                                               ; preds = %36
  %63 = load i32, i32* %13, align 4
  %64 = sdiv i32 %63, 4
  %65 = mul nsw i32 %64, 3125
  %66 = sdiv i32 %65, 100
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %36, %62, %57, %53
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %32
  %72 = load %struct.lm70*, %struct.lm70** %8, align 8
  %73 = getelementptr inbounds %struct.lm70, %struct.lm70* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %23
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.lm70* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

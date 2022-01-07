; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_i2c_dev = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@I2C_MST_CNTL = common dso_local global i64 0, align 8
@I2C_MST_CNTL_CYCLE_TRIGGER = common dso_local global i32 0, align 4
@I2C_MST_CNTL_STATUS = common dso_local global i32 0, align 4
@I2C_MST_CNTL_STATUS_BUS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i2c timeout error %x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpu_i2c_dev*)* @gpu_i2c_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_i2c_check_status(%struct.gpu_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpu_i2c_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gpu_i2c_dev* %0, %struct.gpu_i2c_dev** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 1000)
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %30, %1
  %10 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %3, align 8
  %11 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I2C_MST_CNTL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @I2C_MST_CNTL_CYCLE_TRIGGER, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  br label %34

21:                                               ; preds = %9
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @I2C_MST_CNTL_STATUS, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @I2C_MST_CNTL_STATUS_BUS_BUSY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %34

28:                                               ; preds = %21
  %29 = call i32 @usleep_range(i32 500, i32 600)
  br label %30

30:                                               ; preds = %28
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @time_is_after_jiffies(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %9, label %34

34:                                               ; preds = %30, %27, %20
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @time_is_before_jiffies(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %3, align 8
  %40 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %64

46:                                               ; preds = %34
  %47 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %3, align 8
  %48 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @I2C_MST_CNTL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @I2C_MST_CNTL_STATUS, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %63 [
    i32 129, label %56
    i32 130, label %57
    i32 128, label %60
  ]

56:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %64

60:                                               ; preds = %46
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %60, %57, %56, %38
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

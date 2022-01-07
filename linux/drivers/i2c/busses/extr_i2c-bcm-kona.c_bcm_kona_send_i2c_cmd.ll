; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_send_i2c_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_send_i2c_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i32, i64, i32 }

@I2C_TIMEOUT = common dso_local global i32 0, align 4
@IER_I2C_INT_EN_MASK = common dso_local global i32 0, align 4
@IER_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BCM_CMD_NOACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kona_i2c_dev*, i32)* @bcm_kona_send_i2c_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_send_i2c_cmd(%struct.bcm_kona_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_kona_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @I2C_TIMEOUT, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %11 = call i32 @bcm_kona_i2c_wait_if_busy(%struct.bcm_kona_i2c_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load i32, i32* @IER_I2C_INT_EN_MASK, align 4
  %18 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %19 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IER_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %25 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %24, i32 0, i32 2
  %26 = call i32 @reinit_completion(i32* %25)
  %27 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bcm_kona_i2c_send_cmd_to_ctrl(%struct.bcm_kona_i2c_dev* %27, i32 %28)
  %30 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %30, i32 0, i32 2
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @wait_for_completion_timeout(i32* %31, i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %35 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IER_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 0, i64 %38)
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %16
  %43 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %44 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %16
  %50 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %51 = load i32, i32* @BCM_CMD_NOACTION, align 4
  %52 = call i32 @bcm_kona_i2c_send_cmd_to_ctrl(%struct.bcm_kona_i2c_dev* %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bcm_kona_i2c_wait_if_busy(%struct.bcm_kona_i2c_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @bcm_kona_i2c_send_cmd_to_ctrl(%struct.bcm_kona_i2c_dev*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

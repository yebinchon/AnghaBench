; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_get_free_slave_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_get_free_slave_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f7_i2c_dev = type { i32*, %struct.device* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32, i32 }

@STM32F7_I2C_MAX_SLAVE = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Slave 0x%x could not be registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32f7_i2c_dev*, %struct.i2c_client*, i32*)* @stm32f7_i2c_get_free_slave_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f7_i2c_get_free_slave_id(%struct.stm32f7_i2c_dev* %0, %struct.i2c_client* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32f7_i2c_dev*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.stm32f7_i2c_dev* %0, %struct.stm32f7_i2c_dev** %5, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %5, align 8
  %11 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @STM32F7_I2C_MAX_SLAVE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %41

28:                                               ; preds = %20, %17
  %29 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %5, align 8
  %30 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %52

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %37
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_reset_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_reset_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_i2c_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@OWL_I2C_REG_FIFOCTL = common dso_local global i64 0, align 8
@OWL_I2C_FIFOCTL_RFR = common dso_local global i32 0, align 4
@OWL_I2C_FIFOCTL_TFR = common dso_local global i32 0, align 4
@OWL_I2C_MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FIFO reset timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_i2c_dev*)* @owl_i2c_reset_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_i2c_reset_fifo(%struct.owl_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.owl_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.owl_i2c_dev* %0, %struct.owl_i2c_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OWL_I2C_REG_FIFOCTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @OWL_I2C_FIFOCTL_RFR, align 4
  %12 = load i32, i32* @OWL_I2C_FIFOCTL_TFR, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @owl_i2c_update_reg(i64 %10, i32 %13, i32 1)
  br label %15

15:                                               ; preds = %31, %1
  %16 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %3, align 8
  %17 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OWL_I2C_REG_FIFOCTL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @OWL_I2C_FIFOCTL_RFR, align 4
  %24 = load i32, i32* @OWL_I2C_FIFOCTL_TFR, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  br label %36

29:                                               ; preds = %15
  %30 = call i32 @usleep_range(i32 500, i32 1000)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @OWL_I2C_MAX_RETRIES, align 4
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %15, label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @OWL_I2C_MAX_RETRIES, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %3, align 8
  %42 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @owl_i2c_update_reg(i64, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

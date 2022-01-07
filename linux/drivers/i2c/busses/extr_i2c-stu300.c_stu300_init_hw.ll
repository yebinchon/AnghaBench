; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { i64, i32 }

@I2C_CR = common dso_local global i64 0, align 8
@I2C_OAR1 = common dso_local global i64 0, align 8
@I2C_CR_PERIPHERAL_ENABLE = common dso_local global i32 0, align 4
@I2C_SR2 = common dso_local global i64 0, align 8
@I2C_SR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*)* @stu300_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_init_hw(%struct.stu300_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stu300_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %3, align 8
  %7 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %8 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @I2C_CR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @stu300_wr8(i32 0, i64 %11)
  %13 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %14 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I2C_OAR1, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @stu300_wr8(i32 0, i64 %17)
  %19 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %20 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @clk_get_rate(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @stu300_set_clk(%struct.stu300_dev* %23, i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %57

30:                                               ; preds = %1
  %31 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  %32 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %33 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @I2C_CR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @stu300_wr8(i32 %31, i64 %36)
  %38 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  %39 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %40 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @I2C_CR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @stu300_wr8(i32 %38, i64 %43)
  %45 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %46 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @I2C_SR2, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @stu300_r8(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %52 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @I2C_SR1, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @stu300_r8(i64 %55)
  store i32 %56, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %30, %28
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @stu300_wr8(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @stu300_set_clk(%struct.stu300_dev*, i64) #1

declare dso_local i32 @stu300_r8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

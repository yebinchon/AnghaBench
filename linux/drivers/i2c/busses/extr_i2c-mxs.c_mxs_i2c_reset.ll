; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_i2c_dev = type { i32, i32, i32, i64 }

@MXS_I2C_TIMING0 = common dso_local global i64 0, align 8
@MXS_I2C_TIMING1 = common dso_local global i64 0, align 8
@MXS_I2C_TIMING2 = common dso_local global i64 0, align 8
@MXS_I2C_IRQ_MASK = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_i2c_dev*)* @mxs_i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_i2c_reset(%struct.mxs_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mxs_i2c_dev* %0, %struct.mxs_i2c_dev** %3, align 8
  %5 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @stmp_reset_block(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MXS_I2C_TIMING0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MXS_I2C_TIMING1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MXS_I2C_TIMING2, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load i32, i32* @MXS_I2C_IRQ_MASK, align 4
  %42 = shl i32 %41, 8
  %43 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MXS_I2C_CTRL1_SET, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %13, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @stmp_reset_block(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

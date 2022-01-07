; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-altera.c_altr_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-altera.c_altr_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altr_i2c_dev = type { i32, i64, i32, i32 }

@ALTR_I2C_THRESHOLD = common dso_local global i32 0, align 4
@ALTR_I2C_CTRL_RXT_SHFT = common dso_local global i32 0, align 4
@ALTR_I2C_CTRL_TCT_SHFT = common dso_local global i32 0, align 4
@ALTR_I2C_CTRL_BSPEED = common dso_local global i32 0, align 4
@ALTR_I2C_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"rate=%uHz per_clk=%uMHz -> ratio=1:%u\0A\00", align 1
@ALTR_I2C_SCL_HIGH = common dso_local global i64 0, align 8
@ALTR_I2C_SCL_LOW = common dso_local global i64 0, align 8
@ALTR_I2C_SDA_HOLD = common dso_local global i64 0, align 8
@ALTR_I2C_ALL_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altr_i2c_dev*)* @altr_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altr_i2c_init(%struct.altr_i2c_dev* %0) #0 {
  %2 = alloca %struct.altr_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.altr_i2c_dev* %0, %struct.altr_i2c_dev** %2, align 8
  %8 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_get_rate(i32 %10)
  %12 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %13 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %11, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_get_rate(i32 %18)
  %20 = sdiv i32 %19, 1000000
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @ALTR_I2C_THRESHOLD, align 4
  %22 = load i32, i32* @ALTR_I2C_CTRL_RXT_SHFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @ALTR_I2C_THRESHOLD, align 4
  %25 = load i32, i32* @ALTR_I2C_CTRL_TCT_SHFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %29 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 100000
  br i1 %31, label %32, label %43

32:                                               ; preds = %1
  %33 = load i32, i32* @ALTR_I2C_CTRL_BSPEED, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %37, 1
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = mul nsw i32 %40, 1
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %7, align 4
  br label %53

43:                                               ; preds = %1
  %44 = load i32, i32* @ALTR_I2C_CTRL_BSPEED, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %47, 1
  %49 = sdiv i32 %48, 3
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sdiv i32 %51, 3
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %43, %32
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %56 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ALTR_I2C_CTRL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %62 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %65 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %71 = call i32 @altr_i2c_reset(%struct.altr_i2c_dev* %70)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %74 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ALTR_I2C_SCL_HIGH, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %81 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ALTR_I2C_SCL_LOW, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load i32, i32* %4, align 4
  %87 = mul nsw i32 300, %86
  %88 = call i32 @div_u64(i32 %87, i32 1000)
  %89 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %90 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ALTR_I2C_SDA_HOLD, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %2, align 8
  %96 = load i32, i32* @ALTR_I2C_ALL_IRQ, align 4
  %97 = call i32 @altr_i2c_int_enable(%struct.altr_i2c_dev* %95, i32 %96, i32 0)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @altr_i2c_reset(%struct.altr_i2c_dev*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @altr_i2c_int_enable(%struct.altr_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

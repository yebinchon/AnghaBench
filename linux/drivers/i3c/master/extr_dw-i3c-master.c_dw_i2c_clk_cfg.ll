; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i2c_clk_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i2c_clk_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_master = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I3C_BUS_I2C_FMP_TLOW_MIN_NS = common dso_local global i64 0, align 8
@I3C_BUS_I2C_FM_PLUS_SCL_RATE = common dso_local global i64 0, align 8
@SCL_I2C_FMP_TIMING = common dso_local global i64 0, align 8
@I3C_BUS_I2C_FM_TLOW_MIN_NS = common dso_local global i64 0, align 8
@I3C_BUS_I2C_FM_SCL_RATE = common dso_local global i64 0, align 8
@SCL_I2C_FM_TIMING = common dso_local global i64 0, align 8
@BUS_FREE_TIMING = common dso_local global i64 0, align 8
@DEVICE_CTRL = common dso_local global i64 0, align 8
@DEV_CTRL_I2C_SLAVE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i3c_master*)* @dw_i2c_clk_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i2c_clk_cfg(%struct.dw_i3c_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i3c_master*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dw_i3c_master* %0, %struct.dw_i3c_master** %3, align 8
  %9 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %10 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %83

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @DIV_ROUND_UP(i64 1000000000, i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* @I3C_BUS_I2C_FMP_TLOW_MIN_NS, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @DIV_ROUND_UP(i64 %21, i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @I3C_BUS_I2C_FM_PLUS_SCL_RATE, align 8
  %26 = call i64 @DIV_ROUND_UP(i64 %24, i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @SCL_I2C_FMP_TIMING_HCNT(i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @SCL_I2C_FMP_TIMING_LCNT(i64 %31)
  %33 = or i32 %30, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %36 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SCL_I2C_FMP_TIMING, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load i64, i64* @I3C_BUS_I2C_FM_TLOW_MIN_NS, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @DIV_ROUND_UP(i64 %41, i64 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @I3C_BUS_I2C_FM_SCL_RATE, align 8
  %46 = call i64 @DIV_ROUND_UP(i64 %44, i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @SCL_I2C_FM_TIMING_HCNT(i64 %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @SCL_I2C_FM_TIMING_LCNT(i64 %51)
  %53 = or i32 %50, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %56 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SCL_I2C_FM_TIMING, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @BUS_I3C_MST_FREE(i64 %61)
  %63 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %64 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BUS_FREE_TIMING, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %70 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DEVICE_CTRL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  %75 = load i32, i32* @DEV_CTRL_I2C_SLAVE_PRESENT, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %78 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DEVICE_CTRL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %18, %15
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @SCL_I2C_FMP_TIMING_HCNT(i64) #1

declare dso_local i32 @SCL_I2C_FMP_TIMING_LCNT(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @SCL_I2C_FM_TIMING_HCNT(i64) #1

declare dso_local i32 @SCL_I2C_FM_TIMING_LCNT(i64) #1

declare dso_local i32 @BUS_I3C_MST_FREE(i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_adapt_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_adapt_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i32, i32, i32, %struct.TYPE_2__*, %struct.i2c_timings }
%struct.TYPE_2__ = type { i32 (i64, %struct.i2c_timings*, %struct.rk3x_i2c_calced_timings*)* }
%struct.rk3x_i2c_calced_timings = type { i32, i32, i32 }
%struct.i2c_timings = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Could not reach SCL freq %u\00", align 1
@REG_CON = common dso_local global i32 0, align 4
@REG_CON_TUNING_MASK = common dso_local global i32 0, align 4
@REG_CLKDIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"CLK %lukhz, Req %uns, Act low %lluns high %lluns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3x_i2c*, i64)* @rk3x_i2c_adapt_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3x_i2c_adapt_div(%struct.rk3x_i2c* %0, i64 %1) #0 {
  %3 = alloca %struct.rk3x_i2c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2c_timings*, align 8
  %6 = alloca %struct.rk3x_i2c_calced_timings, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %12, i32 0, i32 4
  store %struct.i2c_timings* %13, %struct.i2c_timings** %5, align 8
  %14 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i64, %struct.i2c_timings*, %struct.rk3x_i2c_calced_timings*)*, i32 (i64, %struct.i2c_timings*, %struct.rk3x_i2c_calced_timings*)** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %21 = call i32 %18(i64 %19, %struct.i2c_timings* %20, %struct.rk3x_i2c_calced_timings* %6)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WARN_ONCE(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %30 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_enable(i32 %31)
  %33 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %34 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %33, i32 0, i32 2
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %38 = load i32, i32* @REG_CON, align 4
  %39 = call i32 @i2c_readl(%struct.rk3x_i2c* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @REG_CON_TUNING_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @REG_CON, align 4
  %51 = call i32 @i2c_writel(%struct.rk3x_i2c* %48, i32 %49, i32 %50)
  %52 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %53 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 65535
  %59 = or i32 %55, %58
  %60 = load i32, i32* @REG_CLKDIV, align 4
  %61 = call i32 @i2c_writel(%struct.rk3x_i2c* %52, i32 %59, i32 %60)
  %62 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %63 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %62, i32 0, i32 2
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %67 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @clk_disable(i32 %68)
  %70 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %6, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = mul nsw i32 %72, 8
  %74 = mul nsw i32 %73, 1000000000
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @div_u64(i32 %74, i64 %75)
  store i32 %76, i32* %7, align 4
  %77 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %6, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 %79, 8
  %81 = mul nsw i32 %80, 1000000000
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @div_u64(i32 %81, i64 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %85 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = udiv i64 %87, 1000
  %89 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %90 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 1000000000, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %88, i32 %92, i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i2c_readl(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

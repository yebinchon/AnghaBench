; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_set_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_set_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.brcmstb_i2c_dev = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@bsc_clk = common dso_local global %struct.TYPE_5__* null, align 8
@BSC_CTL_REG_SCL_SEL_MASK = common dso_local global i32 0, align 4
@BSC_CTL_REG_DIV_CLK_MASK = common dso_local global i32 0, align 4
@ctl_reg = common dso_local global i32 0, align 4
@BSC_CTL_REG_SCL_SEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"leaving current clock-frequency @ %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmstb_i2c_dev*)* @brcmstb_i2c_set_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_i2c_set_bus_speed(%struct.brcmstb_i2c_dev* %0) #0 {
  %2 = alloca %struct.brcmstb_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.brcmstb_i2c_dev* %0, %struct.brcmstb_i2c_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bsc_clk, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bsc_clk, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %15
  %25 = load i32, i32* @BSC_CTL_REG_SCL_SEL_MASK, align 4
  %26 = load i32, i32* @BSC_CTL_REG_DIV_CLK_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %30 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bsc_clk, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bsc_clk, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %40, %46
  %48 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %49 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %55 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %56 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ctl_reg, align 4
  %61 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %54, i32 %59, i32 %60)
  br label %66

62:                                               ; preds = %15
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %11

66:                                               ; preds = %24, %11
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %72 = load i32, i32* @ctl_reg, align 4
  %73 = call i32 @bsc_readl(%struct.brcmstb_i2c_dev* %71, i32 %72)
  %74 = load i32, i32* @BSC_CTL_REG_SCL_SEL_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @BSC_CTL_REG_SCL_SEL_SHIFT, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %3, align 4
  %78 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %79 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bsc_clk, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @dev_warn(i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %70, %66
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @bsc_writel(%struct.brcmstb_i2c_dev*, i32, i32) #1

declare dso_local i32 @bsc_readl(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

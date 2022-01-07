; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"rate=%uHz per_clk=%uMHz -> ratio=1:%u\0A\00", align 1
@SOFT_RESET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Soft reset failed\0A\00", align 1
@GLOBAL_CONTROL = common dso_local global i64 0, align 8
@SCL_HIGH_PERIOD = common dso_local global i64 0, align 8
@SCL_LOW_PERIOD = common dso_local global i64 0, align 8
@SDA_SETUP_TIME = common dso_local global i64 0, align 8
@SDA_HOLD_TIME = common dso_local global i64 0, align 8
@SPIKE_FLTR_LEN = common dso_local global i64 0, align 8
@SCL_WAIT_TIMEOUT_NS = common dso_local global i32 0, align 4
@TIMER_CLOCK_DIV = common dso_local global i64 0, align 8
@WT_EN = common dso_local global i32 0, align 4
@WAIT_TIMER_CONTROL = common dso_local global i64 0, align 8
@INTERRUPT_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axxia_i2c_dev*)* @axxia_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_init(%struct.axxia_i2c_dev* %0) #0 {
  %2 = alloca %struct.axxia_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.axxia_i2c_dev* %0, %struct.axxia_i2c_dev** %2, align 8
  %11 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_get_rate(i32 %13)
  %15 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %16 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %14, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %20 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_get_rate(i32 %21)
  %23 = sdiv i32 %22, 1000000
  store i32 %23, i32* %4, align 4
  %24 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %25 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %28 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %34 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SOFT_RESET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 1, i64 %37)
  %39 = load i64, i64* @jiffies, align 8
  %40 = call i64 @msecs_to_jiffies(i32 100)
  %41 = add i64 %39, %40
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %61, %1
  %43 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %44 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SOFT_RESET, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @time_after(i64 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %58 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %62

61:                                               ; preds = %51
  br label %42

62:                                               ; preds = %56, %42
  %63 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %64 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GLOBAL_CONTROL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 1, i64 %67)
  %69 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %70 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %71, 100000
  br i1 %72, label %73, label %82

73:                                               ; preds = %62
  %74 = load i32, i32* %3, align 4
  %75 = mul nsw i32 %74, 1
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %3, align 4
  %78 = mul nsw i32 %77, 1
  %79 = sdiv i32 %78, 2
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @ns_to_clk(i32 250, i32 %80)
  store i32 %81, i32* %5, align 4
  br label %91

82:                                               ; preds = %62
  %83 = load i32, i32* %3, align 4
  %84 = mul nsw i32 %83, 1
  %85 = sdiv i32 %84, 3
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %3, align 4
  %87 = mul nsw i32 %86, 2
  %88 = sdiv i32 %87, 3
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @ns_to_clk(i32 100, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %82, %73
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %94 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SCL_HIGH_PERIOD, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %101 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SCL_LOW_PERIOD, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %108 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SDA_SETUP_TIME, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @ns_to_clk(i32 300, i32 %113)
  %115 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %116 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SDA_HOLD_TIME, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @ns_to_clk(i32 50, i32 %121)
  %123 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %124 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SPIKE_FLTR_LEN, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  %129 = load i32, i32* @SCL_WAIT_TIMEOUT_NS, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @ns_to_clk(i32 %129, i32 %130)
  store i32 %131, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %142, %91
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %133, 15
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = icmp sle i32 %136, 32767
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %145

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = ashr i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %132

145:                                              ; preds = %138, %132
  %146 = load i32, i32* %8, align 4
  %147 = icmp sgt i32 %146, 32767
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 32767, i32* %8, align 4
  br label %149

149:                                              ; preds = %148, %145
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %152 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TIMER_CLOCK_DIV, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  %157 = load i32, i32* @WT_EN, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @WT_VALUE(i32 %158)
  %160 = or i32 %157, %159
  %161 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %162 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @WAIT_TIMER_CONTROL, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel(i32 %160, i64 %165)
  %167 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %168 = call i32 @i2c_int_disable(%struct.axxia_i2c_dev* %167, i32 -1)
  %169 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %170 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @INTERRUPT_ENABLE, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @writel(i32 1, i64 %173)
  ret i32 0
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @ns_to_clk(i32, i32) #1

declare dso_local i32 @WT_VALUE(i32) #1

declare dso_local i32 @i2c_int_disable(%struct.axxia_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

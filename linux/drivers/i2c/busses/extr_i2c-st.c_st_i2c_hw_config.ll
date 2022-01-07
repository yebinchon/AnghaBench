; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_timings = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.st_i2c_dev = type { i64, i64, i64, i64, i32 }

@i2c_timings = common dso_local global %struct.st_i2c_timings* null, align 8
@SSC_CLR_REPSTRT = common dso_local global i32 0, align 4
@SSC_CLR_NACK = common dso_local global i32 0, align 4
@SSC_CLR_SSCARBL = common dso_local global i32 0, align 4
@SSC_CLR_SSCAAS = common dso_local global i32 0, align 4
@SSC_CLR_SSCSTOP = common dso_local global i32 0, align 4
@SSC_CLR = common dso_local global i64 0, align 8
@SSC_CTL_PO = common dso_local global i32 0, align 4
@SSC_CTL_PH = common dso_local global i32 0, align 4
@SSC_CTL_HB = common dso_local global i32 0, align 4
@SSC_CTL_DATA_WIDTH_9 = common dso_local global i32 0, align 4
@SSC_CTL = common dso_local global i64 0, align 8
@SSC_BRG = common dso_local global i64 0, align 8
@SSC_PRE_SCALER_BRG = common dso_local global i64 0, align 8
@SSC_I2C_I2CM = common dso_local global i32 0, align 4
@SSC_I2C = common dso_local global i64 0, align 8
@SSC_REP_START_HOLD = common dso_local global i64 0, align 8
@SSC_REP_START_SETUP = common dso_local global i64 0, align 8
@SSC_START_HOLD = common dso_local global i64 0, align 8
@SSC_DATA_SETUP = common dso_local global i64 0, align 8
@SSC_STOP_SETUP = common dso_local global i64 0, align 8
@SSC_BUS_FREE = common dso_local global i64 0, align 8
@SSC_PRSCALER = common dso_local global i64 0, align 8
@SSC_PRSCALER_DATAOUT = common dso_local global i64 0, align 8
@SSC_NOISE_SUPP_WIDTH = common dso_local global i64 0, align 8
@SSC_NOISE_SUPP_WIDTH_DATAOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_i2c_dev*)* @st_i2c_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_i2c_hw_config(%struct.st_i2c_dev* %0) #0 {
  %2 = alloca %struct.st_i2c_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_i2c_timings*, align 8
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %2, align 8
  %7 = load %struct.st_i2c_timings*, %struct.st_i2c_timings** @i2c_timings, align 8
  %8 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.st_i2c_timings, %struct.st_i2c_timings* %7, i64 %10
  store %struct.st_i2c_timings* %11, %struct.st_i2c_timings** %6, align 8
  %12 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %13 = call i32 @st_i2c_soft_reset(%struct.st_i2c_dev* %12)
  %14 = load i32, i32* @SSC_CLR_REPSTRT, align 4
  %15 = load i32, i32* @SSC_CLR_NACK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SSC_CLR_SSCARBL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SSC_CLR_SSCAAS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SSC_CLR_SSCSTOP, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %25 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SSC_CLR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  %30 = load i32, i32* @SSC_CTL_PO, align 4
  %31 = load i32, i32* @SSC_CTL_PH, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SSC_CTL_HB, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SSC_CTL_DATA_WIDTH_9, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %39 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SSC_CTL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 %37, i64 %42)
  %44 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %45 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @clk_get_rate(i32 %46)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = udiv i64 1000000000, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load i64, i64* %3, align 8
  %52 = load %struct.st_i2c_timings*, %struct.st_i2c_timings** %6, align 8
  %53 = getelementptr inbounds %struct.st_i2c_timings, %struct.st_i2c_timings* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %51, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %61 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SSC_BRG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel_relaxed(i32 %59, i64 %64)
  %66 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %67 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SSC_PRE_SCALER_BRG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i32 1, i64 %70)
  %72 = load i32, i32* @SSC_I2C_I2CM, align 4
  %73 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %74 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SSC_I2C, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel_relaxed(i32 %72, i64 %77)
  %79 = load %struct.st_i2c_timings*, %struct.st_i2c_timings** %6, align 8
  %80 = getelementptr inbounds %struct.st_i2c_timings, %struct.st_i2c_timings* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sdiv i32 %81, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %86 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SSC_REP_START_HOLD, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel_relaxed(i32 %84, i64 %89)
  %91 = load %struct.st_i2c_timings*, %struct.st_i2c_timings** %6, align 8
  %92 = getelementptr inbounds %struct.st_i2c_timings, %struct.st_i2c_timings* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %98 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SSC_REP_START_SETUP, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel_relaxed(i32 %96, i64 %101)
  %103 = load %struct.st_i2c_timings*, %struct.st_i2c_timings** %6, align 8
  %104 = getelementptr inbounds %struct.st_i2c_timings, %struct.st_i2c_timings* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sdiv i32 %105, %106
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %110 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SSC_START_HOLD, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel_relaxed(i32 %108, i64 %113)
  %115 = load %struct.st_i2c_timings*, %struct.st_i2c_timings** %6, align 8
  %116 = getelementptr inbounds %struct.st_i2c_timings, %struct.st_i2c_timings* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %122 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SSC_DATA_SETUP, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel_relaxed(i32 %120, i64 %125)
  %127 = load %struct.st_i2c_timings*, %struct.st_i2c_timings** %6, align 8
  %128 = getelementptr inbounds %struct.st_i2c_timings, %struct.st_i2c_timings* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sdiv i32 %129, %130
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %134 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SSC_STOP_SETUP, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel_relaxed(i32 %132, i64 %137)
  %139 = load %struct.st_i2c_timings*, %struct.st_i2c_timings** %6, align 8
  %140 = getelementptr inbounds %struct.st_i2c_timings, %struct.st_i2c_timings* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %5, align 4
  %143 = sdiv i32 %141, %142
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %146 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SSC_BUS_FREE, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel_relaxed(i32 %144, i64 %149)
  %151 = load i64, i64* %3, align 8
  %152 = udiv i64 %151, 10000000
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %156 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SSC_PRSCALER, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @writel_relaxed(i32 %154, i64 %159)
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %163 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SSC_PRSCALER_DATAOUT, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel_relaxed(i32 %161, i64 %166)
  %168 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %169 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %3, align 8
  %172 = mul i64 %170, %171
  %173 = udiv i64 %172, 100000000
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %177 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SSC_NOISE_SUPP_WIDTH, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @writel_relaxed(i32 %175, i64 %180)
  %182 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %183 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %3, align 8
  %186 = mul i64 %184, %185
  %187 = udiv i64 %186, 100000000
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %4, align 4
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %191 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SSC_NOISE_SUPP_WIDTH_DATAOUT, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel_relaxed(i32 %189, i64 %194)
  ret void
}

declare dso_local i32 @st_i2c_soft_reset(%struct.st_i2c_dev*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

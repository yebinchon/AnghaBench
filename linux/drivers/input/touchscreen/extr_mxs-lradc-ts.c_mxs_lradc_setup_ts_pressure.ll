; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_setup_ts_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_setup_ts_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i64, i64, i64, i64 }

@LRADC_CH_ACCUMULATE = common dso_local global i32 0, align 4
@LRADC_CH_VALUE_MASK = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@LRADC_DELAY_KICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*, i32, i32)* @mxs_lradc_setup_ts_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_setup_ts_pressure(%struct.mxs_lradc_ts* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxs_lradc_ts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @LRADC_CH_ACCUMULATE, align 4
  %9 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %10 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @LRADC_CH_NUM_SAMPLES(i64 %12)
  %14 = or i32 %8, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %17 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @LRADC_CH(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @writel(i32 %15, i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %25 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @LRADC_CH(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writel(i32 %23, i64 %29)
  %31 = load i32, i32* @LRADC_CH_VALUE_MASK, align 4
  %32 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %33 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @LRADC_CH(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %31, i64 %39)
  %41 = load i32, i32* @LRADC_CH_VALUE_MASK, align 4
  %42 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %43 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @LRADC_CH(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %41, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 1, %51
  %53 = call i32 @LRADC_DELAY_TRIGGER(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 1, %54
  %56 = call i32 @LRADC_DELAY_TRIGGER(i32 %55)
  %57 = or i32 %53, %56
  %58 = call i32 @LRADC_DELAY_TRIGGER_DELAYS(i32 0)
  %59 = or i32 %57, %58
  %60 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %61 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  %64 = call i32 @LRADC_DELAY_LOOP(i64 %63)
  %65 = or i32 %59, %64
  %66 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %67 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  %70 = call i32 @LRADC_DELAY_DELAY(i64 %69)
  %71 = or i32 %65, %70
  %72 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %73 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @LRADC_DELAY(i32 3)
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @LRADC_CTRL1_LRADC_IRQ(i32 %78)
  %80 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %81 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @LRADC_CTRL1, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %79, i64 %86)
  %88 = call i32 @LRADC_DELAY_TRIGGER(i32 0)
  %89 = call i32 @BIT(i32 3)
  %90 = call i32 @LRADC_DELAY_TRIGGER_DELAYS(i32 %89)
  %91 = or i32 %88, %90
  %92 = load i32, i32* @LRADC_DELAY_KICK, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %95 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @LRADC_DELAY_DELAY(i64 %96)
  %98 = or i32 %93, %97
  %99 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %100 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @LRADC_DELAY(i32 2)
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  ret void
}

declare dso_local i32 @LRADC_CH_NUM_SAMPLES(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @LRADC_CH(i32) #1

declare dso_local i32 @LRADC_DELAY_TRIGGER(i32) #1

declare dso_local i32 @LRADC_DELAY_TRIGGER_DELAYS(i32) #1

declare dso_local i32 @LRADC_DELAY_LOOP(i64) #1

declare dso_local i32 @LRADC_DELAY_DELAY(i64) #1

declare dso_local i64 @LRADC_DELAY(i32) #1

declare dso_local i32 @LRADC_CTRL1_LRADC_IRQ(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_setup_ts_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_setup_ts_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i64, i64, i64, i64 }

@LRADC_CH_ACCUMULATE = common dso_local global i32 0, align 4
@LRADC_CH_VALUE_MASK = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@LRADC_DELAY_KICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*, i32)* @mxs_lradc_setup_ts_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_setup_ts_channel(%struct.mxs_lradc_ts* %0, i32 %1) #0 {
  %3 = alloca %struct.mxs_lradc_ts*, align 8
  %4 = alloca i32, align 4
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @LRADC_CH_ACCUMULATE, align 4
  %6 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %7 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %8, 1
  %10 = call i32 @LRADC_CH_NUM_SAMPLES(i64 %9)
  %11 = or i32 %5, %10
  %12 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %13 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @LRADC_CH(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @writel(i32 %11, i64 %17)
  %19 = load i32, i32* @LRADC_CH_VALUE_MASK, align 4
  %20 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %21 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @LRADC_CH(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %19, i64 %27)
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @LRADC_DELAY_TRIGGER(i32 %30)
  %32 = call i32 @LRADC_DELAY_TRIGGER_DELAYS(i32 0)
  %33 = or i32 %31, %32
  %34 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %35 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @LRADC_DELAY_LOOP(i64 %37)
  %39 = or i32 %33, %38
  %40 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %41 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @LRADC_DELAY_DELAY(i64 %43)
  %45 = or i32 %39, %44
  %46 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %47 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @LRADC_DELAY(i32 3)
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @LRADC_CTRL1_LRADC_IRQ(i32 %52)
  %54 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %55 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LRADC_CTRL1, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %53, i64 %60)
  %62 = call i32 @LRADC_DELAY_TRIGGER(i32 0)
  %63 = call i32 @BIT(i32 3)
  %64 = call i32 @LRADC_DELAY_TRIGGER_DELAYS(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* @LRADC_DELAY_KICK, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %69 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @LRADC_DELAY_DELAY(i64 %70)
  %72 = or i32 %67, %71
  %73 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %74 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @LRADC_DELAY(i32 2)
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @LRADC_CH_NUM_SAMPLES(i64) #1

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

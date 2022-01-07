; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mxs_lradc_ts = type { i64, %struct.mxs_lradc* }
%struct.mxs_lradc = type { i64, i32 }

@LRADC_CTRL1_TOUCH_DETECT_IRQ_EN = common dso_local global i32 0, align 4
@TOUCHSCREEN_VCHANNEL1 = common dso_local global i32 0, align 4
@TOUCHSCREEN_VCHANNEL2 = common dso_local global i32 0, align 4
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@info = common dso_local global %struct.TYPE_2__* null, align 8
@LRADC_CTRL0 = common dso_local global i64 0, align 8
@LRADC_CTRL1_LRADC_IRQ_EN_OFFSET = common dso_local global i32 0, align 4
@LRADC_MAX_DELAY_CHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*)* @mxs_lradc_ts_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_ts_stop(%struct.mxs_lradc_ts* %0) #0 {
  %2 = alloca %struct.mxs_lradc_ts*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxs_lradc*, align 8
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %2, align 8
  %5 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %6 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %5, i32 0, i32 1
  %7 = load %struct.mxs_lradc*, %struct.mxs_lradc** %6, align 8
  store %struct.mxs_lradc* %7, %struct.mxs_lradc** %4, align 8
  %8 = load i32, i32* @LRADC_CTRL1_TOUCH_DETECT_IRQ_EN, align 4
  %9 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %10 = call i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32 %9)
  %11 = or i32 %8, %10
  %12 = load i32, i32* @TOUCHSCREEN_VCHANNEL2, align 4
  %13 = call i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32 %12)
  %14 = or i32 %11, %13
  %15 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %16 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LRADC_CTRL1, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %14, i64 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %24 = load %struct.mxs_lradc*, %struct.mxs_lradc** %4, align 8
  %25 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %31 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LRADC_CTRL0, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %29, i64 %36)
  %38 = load %struct.mxs_lradc*, %struct.mxs_lradc** %4, align 8
  %39 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LRADC_CTRL1_LRADC_IRQ_EN_OFFSET, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %44 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LRADC_CTRL1, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %42, i64 %49)
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %63, %1
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @LRADC_MAX_DELAY_CHANS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %57 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @LRADC_DELAY(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %51

66:                                               ; preds = %51
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32) #1

declare dso_local i64 @LRADC_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

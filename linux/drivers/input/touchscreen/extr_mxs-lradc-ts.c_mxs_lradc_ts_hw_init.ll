; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i64, %struct.mxs_lradc* }
%struct.mxs_lradc = type { i64, i64 }

@IMX28_LRADC = common dso_local global i64 0, align 8
@LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE = common dso_local global i32 0, align 4
@LRADC_CTRL0 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@MXS_LRADC_TOUCHSCREEN_5WIRE = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*)* @mxs_lradc_ts_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_ts_hw_init(%struct.mxs_lradc_ts* %0) #0 {
  %2 = alloca %struct.mxs_lradc_ts*, align 8
  %3 = alloca %struct.mxs_lradc*, align 8
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %2, align 8
  %4 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %5 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %4, i32 0, i32 1
  %6 = load %struct.mxs_lradc*, %struct.mxs_lradc** %5, align 8
  store %struct.mxs_lradc* %6, %struct.mxs_lradc** %3, align 8
  %7 = load %struct.mxs_lradc*, %struct.mxs_lradc** %3, align 8
  %8 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IMX28_LRADC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE, align 4
  %14 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %15 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LRADC_CTRL0, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %13, i64 %20)
  %22 = load %struct.mxs_lradc*, %struct.mxs_lradc** %3, align 8
  %23 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MXS_LRADC_TOUCHSCREEN_5WIRE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %12
  %28 = load i32, i32* @LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE, align 4
  %29 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %30 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LRADC_CTRL0, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %28, i64 %35)
  br label %37

37:                                               ; preds = %27, %12
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

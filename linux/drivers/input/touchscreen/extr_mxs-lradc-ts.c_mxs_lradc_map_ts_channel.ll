; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_map_ts_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_map_ts_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i64 }

@LRADC_CTRL4 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*, i32, i32)* @mxs_lradc_map_ts_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_map_ts_channel(%struct.mxs_lradc_ts* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxs_lradc_ts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @LRADC_CTRL4_LRADCSELECT_MASK(i32 %7)
  %9 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %10 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LRADC_CTRL4, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %8, i64 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @LRADC_CTRL4_LRADCSELECT(i32 %17, i32 %18)
  %20 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %4, align 8
  %21 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LRADC_CTRL4, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %19, i64 %26)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @LRADC_CTRL4_LRADCSELECT_MASK(i32) #1

declare dso_local i32 @LRADC_CTRL4_LRADCSELECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

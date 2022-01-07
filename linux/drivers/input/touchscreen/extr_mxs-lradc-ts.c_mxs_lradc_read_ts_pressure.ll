; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_read_ts_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_read_ts_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i32, i64 }

@LRADC_CTRL1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"One channel is still busy: %X\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot calculate pressure\0A\00", align 1
@LRADC_RESOLUTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Pressure = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_lradc_ts*, i32, i32)* @mxs_lradc_read_ts_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_read_ts_pressure(%struct.mxs_lradc_ts* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxs_lradc_ts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @LRADC_CTRL1_LRADC_IRQ(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @LRADC_CTRL1_LRADC_IRQ(i32 %15)
  %17 = or i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %5, align 8
  %19 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LRADC_CTRL1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %30, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %5, align 8
  %32 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LRADC_CTRL1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %5, align 8
  %40 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mxs_lradc_ts_read_raw_channel(%struct.mxs_lradc_ts* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mxs_lradc_ts_read_raw_channel(%struct.mxs_lradc_ts* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %5, align 8
  %55 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @LRADC_RESOLUTION, align 4
  %59 = sub nsw i32 %58, 1
  %60 = shl i32 1, %59
  store i32 %60, i32* %4, align 4
  br label %76

61:                                               ; preds = %44
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @LRADC_RESOLUTION, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %10, align 4
  %66 = mul i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = udiv i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %5, align 8
  %71 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %61, %53
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @LRADC_CTRL1_LRADC_IRQ(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mxs_lradc_ts_read_raw_channel(%struct.mxs_lradc_ts*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

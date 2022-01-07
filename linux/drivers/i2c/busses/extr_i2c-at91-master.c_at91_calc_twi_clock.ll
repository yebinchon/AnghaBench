; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_calc_twi_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_calc_twi_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_dev = type { i32, i32, i32, %struct.at91_twi_pdata* }
%struct.at91_twi_pdata = type { i32, i32, i64 }
%struct.i2c_timings = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"%d exceeds ckdiv max value which is %d.\0A\00", align 1
@AT91_TWI_CWGR_HOLD_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"HOLD field set to its maximum value (%d instead of %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cdiv %d ckdiv %d hold %d (%d ns)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_twi_dev*)* @at91_calc_twi_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_calc_twi_clock(%struct.at91_twi_dev* %0) #0 {
  %2 = alloca %struct.at91_twi_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.at91_twi_pdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_timings, align 4
  %11 = alloca %struct.i2c_timings*, align 8
  store %struct.at91_twi_dev* %0, %struct.at91_twi_dev** %2, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %13 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %12, i32 0, i32 3
  %14 = load %struct.at91_twi_pdata*, %struct.at91_twi_pdata** %13, align 8
  store %struct.at91_twi_pdata* %14, %struct.at91_twi_pdata** %7, align 8
  %15 = load %struct.at91_twi_pdata*, %struct.at91_twi_pdata** %7, align 8
  %16 = getelementptr inbounds %struct.at91_twi_pdata, %struct.at91_twi_pdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.at91_twi_pdata*, %struct.at91_twi_pdata** %7, align 8
  %19 = getelementptr inbounds %struct.at91_twi_pdata, %struct.at91_twi_pdata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store %struct.i2c_timings* %10, %struct.i2c_timings** %11, align 8
  %21 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %22 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i2c_timings*, %struct.i2c_timings** %11, align 8
  %25 = call i32 @i2c_parse_fw_timings(i32 %23, %struct.i2c_timings* %24, i32 1)
  %26 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %27 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_get_rate(i32 %28)
  %30 = load %struct.i2c_timings*, %struct.i2c_timings** %11, align 8
  %31 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 2, %32
  %34 = call i32 @DIV_ROUND_UP(i32 %29, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @max(i32 0, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 8
  %40 = call i32 @fls(i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %1
  %48 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %49 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @dev_warn(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  store i32 255, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %1
  %56 = load %struct.at91_twi_pdata*, %struct.at91_twi_pdata** %7, align 8
  %57 = getelementptr inbounds %struct.at91_twi_pdata, %struct.at91_twi_pdata* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load %struct.i2c_timings*, %struct.i2c_timings** %11, align 8
  %62 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %65 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @clk_get_rate(i32 %66)
  %68 = sdiv i32 %67, 1000
  %69 = mul nsw i32 %63, %68
  %70 = call i32 @DIV_ROUND_UP(i32 %69, i32 1000000)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, 3
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %60
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @AT91_TWI_CWGR_HOLD_MAX, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %82 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AT91_TWI_CWGR_HOLD_MAX, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_warn(i32 %83, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* @AT91_TWI_CWGR_HOLD_MAX, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %80, %76
  br label %89

89:                                               ; preds = %88, %55
  %90 = load i32, i32* %3, align 4
  %91 = shl i32 %90, 16
  %92 = load i32, i32* %4, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %91, %93
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @AT91_TWI_CWGR_HOLD(i32 %97)
  %99 = or i32 %96, %98
  %100 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %101 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %103 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.i2c_timings*, %struct.i2c_timings** %11, align 8
  %109 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106, i32 %107, i32 %110)
  ret void
}

declare dso_local i32 @i2c_parse_fw_timings(i32, %struct.i2c_timings*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @AT91_TWI_CWGR_HOLD(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

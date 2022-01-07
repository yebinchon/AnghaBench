; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tps6507x-ts.c_tps6507x_adc_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tps6507x-ts.c_tps6507x_adc_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6507x_ts = type { i32 }

@TPS6507X_REG_TSCMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TSC mode read failed\0A\00", align 1
@TPS6507X_REG_ADCONFIG = common dso_local global i32 0, align 4
@TPS6507X_ADCONFIG_CONVERT_TS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ADC config write failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ADC config read failed\0A\00", align 1
@TPS6507X_ADCONFIG_START_CONVERSION = common dso_local global i32 0, align 4
@TPS6507X_REG_ADRESULT_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ADC result 2 read failed\0A\00", align 1
@TPS6507X_REG_ADRESULT_2_MASK = common dso_local global i32 0, align 4
@TPS6507X_REG_ADRESULT_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"ADC result 1 read failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"TSC channel %d = 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tps6507x_ts*, i32, i32*)* @tps6507x_adc_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tps6507x_adc_conversion(%struct.tps6507x_ts* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tps6507x_ts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tps6507x_ts* %0, %struct.tps6507x_ts** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %12 = load i32, i32* @TPS6507X_REG_TSCMODE, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @tps6507x_write_u8(%struct.tps6507x_ts* %11, i32 %12, i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %19 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %92

22:                                               ; preds = %3
  %23 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %24 = load i32, i32* @TPS6507X_REG_ADCONFIG, align 4
  %25 = load i32, i32* @TPS6507X_ADCONFIG_CONVERT_TS, align 4
  %26 = call i64 @tps6507x_write_u8(%struct.tps6507x_ts* %23, i32 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %31 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %94

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %48, %35
  %37 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %38 = load i32, i32* @TPS6507X_REG_ADCONFIG, align 4
  %39 = call i64 @tps6507x_read_u8(%struct.tps6507x_ts* %37, i32 %38, i32* %9)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %44 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %92

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @TPS6507X_ADCONFIG_START_CONVERSION, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %36, label %53

53:                                               ; preds = %48
  %54 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %55 = load i32, i32* @TPS6507X_REG_ADRESULT_2, align 4
  %56 = call i64 @tps6507x_read_u8(%struct.tps6507x_ts* %54, i32 %55, i32* %10)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %61 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %92

64:                                               ; preds = %53
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @TPS6507X_REG_ADRESULT_2_MASK, align 4
  %67 = and i32 %65, %66
  %68 = shl i32 %67, 8
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %71 = load i32, i32* @TPS6507X_REG_ADRESULT_1, align 4
  %72 = call i64 @tps6507x_read_u8(%struct.tps6507x_ts* %70, i32 %71, i32* %10)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %77 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %92

80:                                               ; preds = %64
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  %85 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %5, align 8
  %86 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %80, %75, %59, %42, %17
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %92, %29
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i64 @tps6507x_write_u8(%struct.tps6507x_ts*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @tps6507x_read_u8(%struct.tps6507x_ts*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

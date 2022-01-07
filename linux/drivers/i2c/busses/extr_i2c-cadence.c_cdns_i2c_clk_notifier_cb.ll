; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_clk_notifier_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_clk_notifier_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.clk_notifier_data = type { i64, i64 }
%struct.cdns_i2c = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"clock rate change rejected\0A\00", align 1
@NOTIFY_STOP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cdns_i2c_clk_notifier_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i2c_clk_notifier_cb(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk_notifier_data*, align 8
  %9 = alloca %struct.cdns_i2c*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.clk_notifier_data*
  store %struct.clk_notifier_data* %16, %struct.clk_notifier_data** %8, align 8
  %17 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %18 = call %struct.cdns_i2c* @to_cdns_i2c(%struct.notifier_block* %17)
  store %struct.cdns_i2c* %18, %struct.cdns_i2c** %9, align 8
  %19 = load %struct.cdns_i2c*, %struct.cdns_i2c** %9, align 8
  %20 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pm_runtime_suspended(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %25, i32* %4, align 4
  br label %102

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  switch i64 %27, label %100 [
    i64 128, label %28
    i64 129, label %63
    i64 130, label %84
  ]

28:                                               ; preds = %26
  %29 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %30 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.cdns_i2c*, %struct.cdns_i2c** %9, align 8
  %33 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @cdns_i2c_calc_divs(i64* %11, i64 %35, i32* %12, i32* %13)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load %struct.cdns_i2c*, %struct.cdns_i2c** %9, align 8
  %41 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %46, i32* %4, align 4
  br label %102

47:                                               ; preds = %28
  %48 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %49 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %52 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %57 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cdns_i2c*, %struct.cdns_i2c** %9, align 8
  %60 = call i32 @cdns_i2c_setclk(i64 %58, %struct.cdns_i2c* %59)
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %102

63:                                               ; preds = %26
  %64 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %65 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cdns_i2c*, %struct.cdns_i2c** %9, align 8
  %68 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %70 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %73 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %63
  %77 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %78 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.cdns_i2c*, %struct.cdns_i2c** %9, align 8
  %81 = call i32 @cdns_i2c_setclk(i64 %79, %struct.cdns_i2c* %80)
  br label %82

82:                                               ; preds = %76, %63
  %83 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %83, i32* %4, align 4
  br label %102

84:                                               ; preds = %26
  %85 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %86 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %89 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %8, align 8
  %94 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.cdns_i2c*, %struct.cdns_i2c** %9, align 8
  %97 = call i32 @cdns_i2c_setclk(i64 %95, %struct.cdns_i2c* %96)
  br label %98

98:                                               ; preds = %92, %84
  %99 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %99, i32* %4, align 4
  br label %102

100:                                              ; preds = %26
  %101 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %98, %82, %61, %39, %24
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.cdns_i2c* @to_cdns_i2c(%struct.notifier_block*) #1

declare dso_local i64 @pm_runtime_suspended(i32) #1

declare dso_local i32 @cdns_i2c_calc_divs(i64*, i64, i32*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @cdns_i2c_setclk(i64, %struct.cdns_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

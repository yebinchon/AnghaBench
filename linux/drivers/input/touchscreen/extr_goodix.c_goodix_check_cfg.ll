; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_check_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_check_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i64 }

@GOODIX_CONFIG_MAX_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"The length of the config fw is not correct\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goodix_ts_data*, %struct.firmware*)* @goodix_check_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_check_cfg(%struct.goodix_ts_data* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.goodix_ts_data*, align 8
  %5 = alloca %struct.firmware*, align 8
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %6 = load %struct.firmware*, %struct.firmware** %5, align 8
  %7 = getelementptr inbounds %struct.firmware, %struct.firmware* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GOODIX_CONFIG_MAX_LENGTH, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %13 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %21 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.goodix_ts_data*, %struct.firmware*)**
  %25 = load i32 (%struct.goodix_ts_data*, %struct.firmware*)*, i32 (%struct.goodix_ts_data*, %struct.firmware*)** %24, align 8
  %26 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %27 = load %struct.firmware*, %struct.firmware** %5, align 8
  %28 = call i32 %25(%struct.goodix_ts_data* %26, %struct.firmware* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

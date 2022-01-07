; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_enable_etf_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_enable_etf_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TMC-ETB/ETF enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, i32, i8*)* @tmc_enable_etf_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_enable_etf_sink(%struct.coresight_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.coresight_device* %0, %struct.coresight_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %17 [
    i32 128, label %10
    i32 129, label %13
  ]

10:                                               ; preds = %3
  %11 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %12 = call i32 @tmc_enable_etf_sink_sysfs(%struct.coresight_device* %11)
  store i32 %12, i32* %8, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @tmc_enable_etf_sink_perf(%struct.coresight_device* %14, i8* %15)
  store i32 %16, i32* %8, align 4
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %17, %13, %10
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %27 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %26, i32 0, i32 0
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @tmc_enable_etf_sink_sysfs(%struct.coresight_device*) #1

declare dso_local i32 @tmc_enable_etf_sink_perf(%struct.coresight_device*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

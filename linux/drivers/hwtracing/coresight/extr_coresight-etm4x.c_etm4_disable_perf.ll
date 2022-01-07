; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_disable_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_disable_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.etm_filters* }
%struct.etm_filters = type { i32 }
%struct.etmv4_drvdata = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TRCVICTLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, %struct.perf_event*)* @etm4_disable_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm4_disable_perf(%struct.coresight_device* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.etm_filters*, align 8
  %8 = alloca %struct.etmv4_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.etm_filters*, %struct.etm_filters** %11, align 8
  store %struct.etm_filters* %12, %struct.etm_filters** %7, align 8
  %13 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %14 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %16)
  store %struct.etmv4_drvdata* %17, %struct.etmv4_drvdata** %8, align 8
  %18 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %8, align 8
  %19 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 (...) @smp_processor_id()
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %8, align 8
  %31 = call i32 @etm4_disable_hw(%struct.etmv4_drvdata* %30)
  %32 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %8, align 8
  %33 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TRCVICTLR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @BIT(i32 9)
  %40 = and i32 %38, %39
  %41 = load %struct.etm_filters*, %struct.etm_filters** %7, align 8
  %42 = getelementptr inbounds %struct.etm_filters, %struct.etm_filters* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %29, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @etm4_disable_hw(%struct.etmv4_drvdata*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

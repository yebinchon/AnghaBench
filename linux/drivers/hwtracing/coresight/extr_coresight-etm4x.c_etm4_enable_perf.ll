; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_enable_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_enable_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { i32 }
%struct.etmv4_drvdata = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, %struct.perf_event*)* @etm4_enable_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm4_enable_perf(%struct.coresight_device* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.etmv4_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %8 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %10)
  store %struct.etmv4_drvdata* %11, %struct.etmv4_drvdata** %6, align 8
  %12 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %6, align 8
  %13 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 (...) @smp_processor_id()
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %6, align 8
  %25 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %26 = call i32 @etm4_parse_event_config(%struct.etmv4_drvdata* %24, %struct.perf_event* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %6, align 8
  %32 = call i32 @etm4_enable_hw(%struct.etmv4_drvdata* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %29, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @etm4_parse_event_config(%struct.etmv4_drvdata*, %struct.perf_event*) #1

declare dso_local i32 @etm4_enable_hw(%struct.etmv4_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

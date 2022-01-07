; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { i32 }
%struct.etmv4_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coresight_device*, %struct.perf_event*)* @etm4_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm4_disable(%struct.coresight_device* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.etmv4_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %8 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %10)
  store %struct.etmv4_drvdata* %11, %struct.etmv4_drvdata** %6, align 8
  %12 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %6, align 8
  %13 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %12, i32 0, i32 0
  %14 = call i32 @local_read(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %24 [
    i32 130, label %16
    i32 128, label %17
    i32 129, label %20
  ]

16:                                               ; preds = %2
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %19 = call i32 @etm4_disable_sysfs(%struct.coresight_device* %18)
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = call i32 @etm4_disable_perf(%struct.coresight_device* %21, %struct.perf_event* %22)
  br label %24

24:                                               ; preds = %2, %20, %17, %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %6, align 8
  %29 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %28, i32 0, i32 0
  %30 = call i32 @local_set(i32* %29, i32 130)
  br label %31

31:                                               ; preds = %27, %24
  ret void
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @local_read(i32*) #1

declare dso_local i32 @etm4_disable_sysfs(%struct.coresight_device*) #1

declare dso_local i32 @etm4_disable_perf(%struct.coresight_device*, %struct.perf_event*) #1

declare dso_local i32 @local_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

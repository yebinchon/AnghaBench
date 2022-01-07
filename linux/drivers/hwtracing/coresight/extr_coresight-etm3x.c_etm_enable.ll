; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { i32 }
%struct.etm_drvdata = type { i32 }

@CS_MODE_DISABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, %struct.perf_event*, i32)* @etm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm_enable(%struct.coresight_device* %0, %struct.perf_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.etm_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %5, align 8
  store %struct.perf_event* %1, %struct.perf_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %12 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %14)
  store %struct.etm_drvdata* %15, %struct.etm_drvdata** %10, align 8
  %16 = load %struct.etm_drvdata*, %struct.etm_drvdata** %10, align 8
  %17 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %16, i32 0, i32 0
  %18 = load i32, i32* @CS_MODE_DISABLED, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @local_cmpxchg(i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %48

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %35 [
    i32 128, label %28
    i32 129, label %31
  ]

28:                                               ; preds = %26
  %29 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %30 = call i32 @etm_enable_sysfs(%struct.coresight_device* %29)
  store i32 %30, i32* %8, align 4
  br label %38

31:                                               ; preds = %26
  %32 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %34 = call i32 @etm_enable_perf(%struct.coresight_device* %32, %struct.perf_event* %33)
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %31, %28
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.etm_drvdata*, %struct.etm_drvdata** %10, align 8
  %43 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %42, i32 0, i32 0
  %44 = load i32, i32* @CS_MODE_DISABLED, align 4
  %45 = call i32 @local_set(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @local_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @etm_enable_sysfs(%struct.coresight_device*) #1

declare dso_local i32 @etm_enable_perf(%struct.coresight_device*, %struct.perf_event*) #1

declare dso_local i32 @local_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

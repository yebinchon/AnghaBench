; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_enable_etf_sink_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_enable_etf_sink_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tmc_drvdata = type { i64, i32, i32, i64 }
%struct.perf_output_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS_MODE_SYSFS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CS_MODE_PERF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, i8*)* @tmc_enable_etf_sink_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_enable_etf_sink_perf(%struct.coresight_device* %0, i8* %1) #0 {
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tmc_drvdata*, align 8
  %9 = alloca %struct.perf_output_handle*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %11 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tmc_drvdata* @dev_get_drvdata(i32 %13)
  store %struct.tmc_drvdata* %14, %struct.tmc_drvdata** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.perf_output_handle*
  store %struct.perf_output_handle* %16, %struct.perf_output_handle** %9, align 8
  %17 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %18 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %17, i32 0, i32 2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  br label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %25 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %93

29:                                               ; preds = %21
  %30 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %31 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CS_MODE_SYSFS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %93

38:                                               ; preds = %29
  %39 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %40 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @task_pid_nr(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %46 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %51 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %93

58:                                               ; preds = %49, %38
  %59 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %60 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %61 = call i32 @tmc_set_etf_buffer(%struct.coresight_device* %59, %struct.perf_output_handle* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %93

65:                                               ; preds = %58
  %66 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %67 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %73 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @atomic_inc(i32 %74)
  br label %93

76:                                               ; preds = %65
  %77 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %78 = call i32 @tmc_etb_enable_hw(%struct.tmc_drvdata* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %84 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* @CS_MODE_PERF, align 8
  %86 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %87 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %89 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @atomic_inc(i32 %90)
  br label %92

92:                                               ; preds = %81, %76
  br label %93

93:                                               ; preds = %92, %71, %64, %55, %35, %28
  %94 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %95 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %94, i32 0, i32 2
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @tmc_set_etf_buffer(%struct.coresight_device*, %struct.perf_output_handle*) #1

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @tmc_etb_enable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

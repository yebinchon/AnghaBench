; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_enable_etr_sink_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_enable_etr_sink_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tmc_drvdata = type { i64, i32, i32, i64 }
%struct.perf_output_handle = type { i32 }
%struct.etr_perf_buffer = type { i32, i64, i32 }

@CS_MODE_SYSFS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CS_MODE_PERF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, i8*)* @tmc_enable_etr_sink_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_enable_etr_sink_perf(%struct.coresight_device* %0, i8* %1) #0 {
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tmc_drvdata*, align 8
  %9 = alloca %struct.perf_output_handle*, align 8
  %10 = alloca %struct.etr_perf_buffer*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %12 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tmc_drvdata* @dev_get_drvdata(i32 %14)
  store %struct.tmc_drvdata* %15, %struct.tmc_drvdata** %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.perf_output_handle*
  store %struct.perf_output_handle* %17, %struct.perf_output_handle** %9, align 8
  %18 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %19 = call %struct.etr_perf_buffer* @etm_perf_sink_config(%struct.perf_output_handle* %18)
  store %struct.etr_perf_buffer* %19, %struct.etr_perf_buffer** %10, align 8
  %20 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %21 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %20, i32 0, i32 2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %25 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CS_MODE_SYSFS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %109

32:                                               ; preds = %2
  %33 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %10, align 8
  %34 = icmp ne %struct.etr_perf_buffer* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %10, align 8
  %37 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ true, %32 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %109

49:                                               ; preds = %41
  %50 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %10, align 8
  %51 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %6, align 4
  %53 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %54 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %59 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %109

66:                                               ; preds = %57, %49
  %67 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %68 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %10, align 8
  %71 = call i32 @PERF_IDX2OFF(i32 %69, %struct.etr_perf_buffer* %70)
  %72 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %10, align 8
  %73 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %75 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %81 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @atomic_inc(i32 %82)
  br label %109

84:                                               ; preds = %66
  %85 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %86 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %10, align 8
  %87 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @tmc_etr_enable_hw(%struct.tmc_drvdata* %85, i64 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %95 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i64, i64* @CS_MODE_PERF, align 8
  %97 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %98 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %10, align 8
  %100 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %103 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %105 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @atomic_inc(i32 %106)
  br label %108

108:                                              ; preds = %92, %84
  br label %109

109:                                              ; preds = %108, %79, %63, %46, %29
  %110 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %111 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %110, i32 0, i32 2
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(i32) #1

declare dso_local %struct.etr_perf_buffer* @etm_perf_sink_config(%struct.perf_output_handle*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @PERF_IDX2OFF(i32, %struct.etr_perf_buffer*) #1

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @tmc_etr_enable_hw(%struct.tmc_drvdata*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.coresight_device = type { i32 }
%struct.perf_output_handle = type { %struct.perf_event* }
%struct.etm_event_data = type { i32 }
%struct.list_head = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.coresight_device*, %struct.perf_event*)* }
%struct.TYPE_6__ = type { i64 (%struct.coresight_device*, %struct.perf_output_handle*, i32)* }

@csdev_src = common dso_local global i32 0, align 4
@ctx_handle = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i64 0, align 8
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @etm_event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm_event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.coresight_device*, align 8
  %8 = alloca %struct.coresight_device*, align 8
  %9 = alloca %struct.perf_output_handle*, align 8
  %10 = alloca %struct.etm_event_data*, align 8
  %11 = alloca %struct.list_head*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 (...) @smp_processor_id()
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @csdev_src, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.coresight_device* @per_cpu(i32 %13, i32 %14)
  store %struct.coresight_device* %15, %struct.coresight_device** %8, align 8
  %16 = call %struct.perf_output_handle* @this_cpu_ptr(i32* @ctx_handle)
  store %struct.perf_output_handle* %16, %struct.perf_output_handle** %9, align 8
  %17 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %18 = call %struct.etm_event_data* @perf_get_aux(%struct.perf_output_handle* %17)
  store %struct.etm_event_data* %18, %struct.etm_event_data** %10, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PERF_HES_STOPPED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %93

26:                                               ; preds = %2
  %27 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %28 = icmp ne %struct.coresight_device* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %93

30:                                               ; preds = %26
  %31 = load %struct.etm_event_data*, %struct.etm_event_data** %10, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.list_head* @etm_event_cpu_path(%struct.etm_event_data* %31, i32 %32)
  store %struct.list_head* %33, %struct.list_head** %11, align 8
  %34 = load %struct.list_head*, %struct.list_head** %11, align 8
  %35 = icmp ne %struct.list_head* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %93

37:                                               ; preds = %30
  %38 = load %struct.list_head*, %struct.list_head** %11, align 8
  %39 = call %struct.coresight_device* @coresight_get_sink(%struct.list_head* %38)
  store %struct.coresight_device* %39, %struct.coresight_device** %7, align 8
  %40 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %41 = icmp ne %struct.coresight_device* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %93

43:                                               ; preds = %37
  %44 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %45 = call %struct.TYPE_5__* @source_ops(%struct.coresight_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.coresight_device*, %struct.perf_event*)*, i32 (%struct.coresight_device*, %struct.perf_event*)** %46, align 8
  %48 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %49 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %50 = call i32 %47(%struct.coresight_device* %48, %struct.perf_event* %49)
  %51 = load i64, i64* @PERF_HES_STOPPED, align 8
  %52 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PERF_EF_UPDATE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %43
  %60 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %61 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %60, i32 0, i32 0
  %62 = load %struct.perf_event*, %struct.perf_event** %61, align 8
  %63 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %64 = icmp ne %struct.perf_event* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON_ONCE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %93

69:                                               ; preds = %59
  %70 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %71 = call %struct.TYPE_6__* @sink_ops(%struct.coresight_device* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64 (%struct.coresight_device*, %struct.perf_output_handle*, i32)*, i64 (%struct.coresight_device*, %struct.perf_output_handle*, i32)** %72, align 8
  %74 = icmp ne i64 (%struct.coresight_device*, %struct.perf_output_handle*, i32)* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %93

76:                                               ; preds = %69
  %77 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %78 = call %struct.TYPE_6__* @sink_ops(%struct.coresight_device* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64 (%struct.coresight_device*, %struct.perf_output_handle*, i32)*, i64 (%struct.coresight_device*, %struct.perf_output_handle*, i32)** %79, align 8
  %81 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %82 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %83 = load %struct.etm_event_data*, %struct.etm_event_data** %10, align 8
  %84 = getelementptr inbounds %struct.etm_event_data, %struct.etm_event_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 %80(%struct.coresight_device* %81, %struct.perf_output_handle* %82, i32 %85)
  store i64 %86, i64* %6, align 8
  %87 = load %struct.perf_output_handle*, %struct.perf_output_handle** %9, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @perf_aux_output_end(%struct.perf_output_handle* %87, i64 %88)
  br label %90

90:                                               ; preds = %76, %43
  %91 = load %struct.list_head*, %struct.list_head** %11, align 8
  %92 = call i32 @coresight_disable_path(%struct.list_head* %91)
  br label %93

93:                                               ; preds = %90, %75, %68, %42, %36, %29, %25
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.coresight_device* @per_cpu(i32, i32) #1

declare dso_local %struct.perf_output_handle* @this_cpu_ptr(i32*) #1

declare dso_local %struct.etm_event_data* @perf_get_aux(%struct.perf_output_handle*) #1

declare dso_local %struct.list_head* @etm_event_cpu_path(%struct.etm_event_data*, i32) #1

declare dso_local %struct.coresight_device* @coresight_get_sink(%struct.list_head*) #1

declare dso_local %struct.TYPE_5__* @source_ops(%struct.coresight_device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.TYPE_6__* @sink_ops(%struct.coresight_device*) #1

declare dso_local i32 @perf_aux_output_end(%struct.perf_output_handle*, i64) #1

declare dso_local i32 @coresight_disable_path(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

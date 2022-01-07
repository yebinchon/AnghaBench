; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.etm_event_data = type { i32 }
%struct.perf_output_handle = type { i32 }
%struct.coresight_device = type { i32 }
%struct.list_head = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.coresight_device*, %struct.perf_event*, i32)* }

@ctx_handle = common dso_local global i32 0, align 4
@csdev_src = common dso_local global i32 0, align 4
@CS_MODE_PERF = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @etm_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm_event_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.etm_event_data*, align 8
  %7 = alloca %struct.perf_output_handle*, align 8
  %8 = alloca %struct.coresight_device*, align 8
  %9 = alloca %struct.coresight_device*, align 8
  %10 = alloca %struct.list_head*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %5, align 4
  %12 = call %struct.perf_output_handle* @this_cpu_ptr(i32* @ctx_handle)
  store %struct.perf_output_handle* %12, %struct.perf_output_handle** %7, align 8
  %13 = load i32, i32* @csdev_src, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.coresight_device* @per_cpu(i32 %13, i32 %14)
  store %struct.coresight_device* %15, %struct.coresight_device** %9, align 8
  %16 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %17 = icmp ne %struct.coresight_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.perf_output_handle*, %struct.perf_output_handle** %7, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = call %struct.etm_event_data* @perf_aux_output_begin(%struct.perf_output_handle* %20, %struct.perf_event* %21)
  store %struct.etm_event_data* %22, %struct.etm_event_data** %6, align 8
  %23 = load %struct.etm_event_data*, %struct.etm_event_data** %6, align 8
  %24 = icmp ne %struct.etm_event_data* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %71

26:                                               ; preds = %19
  %27 = load %struct.etm_event_data*, %struct.etm_event_data** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.list_head* @etm_event_cpu_path(%struct.etm_event_data* %27, i32 %28)
  store %struct.list_head* %29, %struct.list_head** %10, align 8
  %30 = load %struct.list_head*, %struct.list_head** %10, align 8
  %31 = call %struct.coresight_device* @coresight_get_sink(%struct.list_head* %30)
  store %struct.coresight_device* %31, %struct.coresight_device** %8, align 8
  %32 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %33 = icmp ne %struct.coresight_device* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %65

39:                                               ; preds = %26
  %40 = load %struct.list_head*, %struct.list_head** %10, align 8
  %41 = load i32, i32* @CS_MODE_PERF, align 4
  %42 = load %struct.perf_output_handle*, %struct.perf_output_handle** %7, align 8
  %43 = call i64 @coresight_enable_path(%struct.list_head* %40, i32 %41, %struct.perf_output_handle* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %65

46:                                               ; preds = %39
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %51 = call %struct.TYPE_4__* @source_ops(%struct.coresight_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64 (%struct.coresight_device*, %struct.perf_event*, i32)*, i64 (%struct.coresight_device*, %struct.perf_event*, i32)** %52, align 8
  %54 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %55 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %56 = load i32, i32* @CS_MODE_PERF, align 4
  %57 = call i64 %53(%struct.coresight_device* %54, %struct.perf_event* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %62

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %71, %60
  ret void

62:                                               ; preds = %59
  %63 = load %struct.list_head*, %struct.list_head** %10, align 8
  %64 = call i32 @coresight_disable_path(%struct.list_head* %63)
  br label %65

65:                                               ; preds = %62, %45, %38
  %66 = load %struct.perf_output_handle*, %struct.perf_output_handle** %7, align 8
  %67 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %68 = call i32 @perf_aux_output_flag(%struct.perf_output_handle* %66, i32 %67)
  %69 = load %struct.perf_output_handle*, %struct.perf_output_handle** %7, align 8
  %70 = call i32 @perf_aux_output_end(%struct.perf_output_handle* %69, i32 0)
  br label %71

71:                                               ; preds = %65, %25, %18
  %72 = load i64, i64* @PERF_HES_STOPPED, align 8
  %73 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %74 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  br label %61
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.perf_output_handle* @this_cpu_ptr(i32*) #1

declare dso_local %struct.coresight_device* @per_cpu(i32, i32) #1

declare dso_local %struct.etm_event_data* @perf_aux_output_begin(%struct.perf_output_handle*, %struct.perf_event*) #1

declare dso_local %struct.list_head* @etm_event_cpu_path(%struct.etm_event_data*, i32) #1

declare dso_local %struct.coresight_device* @coresight_get_sink(%struct.list_head*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @coresight_enable_path(%struct.list_head*, i32, %struct.perf_output_handle*) #1

declare dso_local %struct.TYPE_4__* @source_ops(%struct.coresight_device*) #1

declare dso_local i32 @coresight_disable_path(%struct.list_head*) #1

declare dso_local i32 @perf_aux_output_flag(%struct.perf_output_handle*, i32) #1

declare dso_local i32 @perf_aux_output_end(%struct.perf_output_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

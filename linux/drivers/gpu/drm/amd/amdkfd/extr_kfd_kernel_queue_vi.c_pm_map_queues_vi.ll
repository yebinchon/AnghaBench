; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_map_queues_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_map_queues_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.queue = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i64 }
%struct.pm4_mes_map_queues = type { i8*, i8*, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IT_MAP_QUEUES = common dso_local global i32 0, align 4
@queue_sel__mes_map_queues__map_to_hws_determined_queue_slots_vi = common dso_local global i32 0, align 4
@engine_sel__mes_map_queues__compute_vi = common dso_local global i64 0, align 8
@queue_type__mes_map_queues__normal_compute_vi = common dso_local global i32 0, align 4
@queue_type__mes_map_queues__normal_latency_static_queue_vi = common dso_local global i32 0, align 4
@queue_type__mes_map_queues__debug_interface_queue_vi = common dso_local global i32 0, align 4
@engine_sel__mes_map_queues__sdma0_vi = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"queue type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32*, %struct.queue*, i32)* @pm_map_queues_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_map_queues_vi(%struct.packet_manager* %0, i32* %1, %struct.queue* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.packet_manager*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pm4_mes_map_queues*, align 8
  %11 = alloca i32, align 4
  store %struct.packet_manager* %0, %struct.packet_manager** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.queue* %2, %struct.queue** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.pm4_mes_map_queues*
  store %struct.pm4_mes_map_queues* %14, %struct.pm4_mes_map_queues** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @memset(i32* %15, i32 0, i32 72)
  %17 = load i32, i32* @IT_MAP_QUEUES, align 4
  %18 = call i32 @pm_build_pm4_header(i32 %17, i32 72)
  %19 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %20 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %23 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @queue_sel__mes_map_queues__map_to_hws_determined_queue_slots_vi, align 4
  %26 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %27 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* @engine_sel__mes_map_queues__compute_vi, align 8
  %30 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %31 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* @queue_type__mes_map_queues__normal_compute_vi, align 4
  %34 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %35 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.queue*, %struct.queue** %8, align 8
  %38 = getelementptr inbounds %struct.queue, %struct.queue* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %65 [
    i32 131, label %41
    i32 130, label %50
    i32 129, label %55
    i32 128, label %55
  ]

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @queue_type__mes_map_queues__normal_latency_static_queue_vi, align 4
  %46 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %47 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %41
  br label %73

50:                                               ; preds = %4
  %51 = load i32, i32* @queue_type__mes_map_queues__debug_interface_queue_vi, align 4
  %52 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %53 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  br label %73

55:                                               ; preds = %4, %4
  %56 = load %struct.queue*, %struct.queue** %8, align 8
  %57 = getelementptr inbounds %struct.queue, %struct.queue* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @engine_sel__mes_map_queues__sdma0_vi, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %63 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  store i32 0, i32* %11, align 4
  br label %73

65:                                               ; preds = %4
  %66 = load %struct.queue*, %struct.queue** %8, align 8
  %67 = getelementptr inbounds %struct.queue, %struct.queue* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %109

73:                                               ; preds = %55, %50, %49
  %74 = load %struct.queue*, %struct.queue** %8, align 8
  %75 = getelementptr inbounds %struct.queue, %struct.queue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %79 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.queue*, %struct.queue** %8, align 8
  %82 = getelementptr inbounds %struct.queue, %struct.queue* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @lower_32_bits(i32 %83)
  %85 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %86 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.queue*, %struct.queue** %8, align 8
  %88 = getelementptr inbounds %struct.queue, %struct.queue* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @upper_32_bits(i32 %89)
  %91 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %92 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.queue*, %struct.queue** %8, align 8
  %94 = getelementptr inbounds %struct.queue, %struct.queue* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i8* @lower_32_bits(i32 %97)
  %99 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %100 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.queue*, %struct.queue** %8, align 8
  %102 = getelementptr inbounds %struct.queue, %struct.queue* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i8* @upper_32_bits(i32 %105)
  %107 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %108 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %73, %65
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

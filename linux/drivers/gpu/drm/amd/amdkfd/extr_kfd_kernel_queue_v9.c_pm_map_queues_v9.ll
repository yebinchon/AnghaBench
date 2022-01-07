; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_map_queues_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_map_queues_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.queue = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.pm4_mes_map_queues = type { i8*, i8*, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IT_MAP_QUEUES = common dso_local global i32 0, align 4
@queue_sel__mes_map_queues__map_to_hws_determined_queue_slots_vi = common dso_local global i32 0, align 4
@engine_sel__mes_map_queues__compute_vi = common dso_local global i32 0, align 4
@extended_engine_sel__mes_map_queues__legacy_engine_sel = common dso_local global i32 0, align 4
@queue_type__mes_map_queues__normal_compute_vi = common dso_local global i32 0, align 4
@queue_type__mes_map_queues__normal_latency_static_queue_vi = common dso_local global i32 0, align 4
@queue_type__mes_map_queues__debug_interface_queue_vi = common dso_local global i32 0, align 4
@engine_sel__mes_map_queues__sdma0_vi = common dso_local global i32 0, align 4
@extended_engine_sel__mes_map_queues__sdma0_to_7_sel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"queue type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32*, %struct.queue*, i32)* @pm_map_queues_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_map_queues_v9(%struct.packet_manager* %0, i32* %1, %struct.queue* %2, i32 %3) #0 {
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
  %16 = call i32 @memset(i32* %15, i32 0, i32 64)
  %17 = load i32, i32* @IT_MAP_QUEUES, align 4
  %18 = call i32 @pm_build_pm4_header(i32 %17, i32 64)
  %19 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %20 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %23 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @queue_sel__mes_map_queues__map_to_hws_determined_queue_slots_vi, align 4
  %26 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %27 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @engine_sel__mes_map_queues__compute_vi, align 4
  %30 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %31 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.queue*, %struct.queue** %8, align 8
  %34 = getelementptr inbounds %struct.queue, %struct.queue* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %40 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @extended_engine_sel__mes_map_queues__legacy_engine_sel, align 4
  %43 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %44 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @queue_type__mes_map_queues__normal_compute_vi, align 4
  %47 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %48 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 4
  %50 = load %struct.queue*, %struct.queue** %8, align 8
  %51 = getelementptr inbounds %struct.queue, %struct.queue* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %97 [
    i32 131, label %54
    i32 130, label %63
    i32 129, label %68
    i32 128, label %68
  ]

54:                                               ; preds = %4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @queue_type__mes_map_queues__normal_latency_static_queue_vi, align 4
  %59 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %60 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %54
  br label %105

63:                                               ; preds = %4
  %64 = load i32, i32* @queue_type__mes_map_queues__debug_interface_queue_vi, align 4
  %65 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %66 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  br label %105

68:                                               ; preds = %4, %4
  store i32 0, i32* %11, align 4
  %69 = load %struct.queue*, %struct.queue** %8, align 8
  %70 = getelementptr inbounds %struct.queue, %struct.queue* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.queue*, %struct.queue** %8, align 8
  %76 = getelementptr inbounds %struct.queue, %struct.queue* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @engine_sel__mes_map_queues__sdma0_vi, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %82 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  br label %96

84:                                               ; preds = %68
  %85 = load i32, i32* @extended_engine_sel__mes_map_queues__sdma0_to_7_sel, align 4
  %86 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %87 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load %struct.queue*, %struct.queue** %8, align 8
  %90 = getelementptr inbounds %struct.queue, %struct.queue* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %94 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %84, %74
  br label %105

97:                                               ; preds = %4
  %98 = load %struct.queue*, %struct.queue** %8, align 8
  %99 = getelementptr inbounds %struct.queue, %struct.queue* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %141

105:                                              ; preds = %96, %63, %62
  %106 = load %struct.queue*, %struct.queue** %8, align 8
  %107 = getelementptr inbounds %struct.queue, %struct.queue* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %111 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.queue*, %struct.queue** %8, align 8
  %114 = getelementptr inbounds %struct.queue, %struct.queue* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @lower_32_bits(i32 %115)
  %117 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %118 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load %struct.queue*, %struct.queue** %8, align 8
  %120 = getelementptr inbounds %struct.queue, %struct.queue* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @upper_32_bits(i32 %121)
  %123 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %124 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.queue*, %struct.queue** %8, align 8
  %126 = getelementptr inbounds %struct.queue, %struct.queue* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i8* @lower_32_bits(i32 %129)
  %131 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %132 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.queue*, %struct.queue** %8, align 8
  %134 = getelementptr inbounds %struct.queue, %struct.queue* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i8* @upper_32_bits(i32 %137)
  %139 = load %struct.pm4_mes_map_queues*, %struct.pm4_mes_map_queues** %10, align 8
  %140 = getelementptr inbounds %struct.pm4_mes_map_queues, %struct.pm4_mes_map_queues* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %105, %97
  %142 = load i32, i32* %5, align 4
  ret i32 %142
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

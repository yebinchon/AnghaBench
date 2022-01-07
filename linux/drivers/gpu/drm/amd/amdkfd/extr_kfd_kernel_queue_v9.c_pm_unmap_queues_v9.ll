; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_unmap_queues_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v9.c_pm_unmap_queues_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.pm4_mes_unmap_queues = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@IT_UNMAP_QUEUES = common dso_local global i32 0, align 4
@extended_engine_sel__mes_unmap_queues__legacy_engine_sel = common dso_local global i8* null, align 8
@engine_sel__mes_unmap_queues__compute = common dso_local global i32 0, align 4
@engine_sel__mes_unmap_queues__sdma0 = common dso_local global i32 0, align 4
@extended_engine_sel__mes_unmap_queues__sdma0_to_7_sel = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"queue type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@action__mes_unmap_queues__reset_queues = common dso_local global i32 0, align 4
@action__mes_unmap_queues__preempt_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__perform_request_on_specified_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__perform_request_on_pasid_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__unmap_all_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__unmap_all_non_static_queues = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"filter %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i8**, i32, i32, i8*, i32, i32)* @pm_unmap_queues_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_unmap_queues_v9(%struct.packet_manager* %0, i8** %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.packet_manager*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pm4_mes_unmap_queues*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i8**, i8*** %10, align 8
  %18 = bitcast i8** %17 to %struct.pm4_mes_unmap_queues*
  store %struct.pm4_mes_unmap_queues* %18, %struct.pm4_mes_unmap_queues** %16, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = call i32 @memset(i8** %19, i32 0, i32 48)
  %21 = load i32, i32* @IT_UNMAP_QUEUES, align 4
  %22 = call i32 @pm_build_pm4_header(i32 %21, i32 48)
  %23 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %24 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %60 [
    i32 135, label %27
    i32 134, label %27
    i32 133, label %36
    i32 132, label %36
  ]

27:                                               ; preds = %7, %7
  %28 = load i8*, i8** @extended_engine_sel__mes_unmap_queues__legacy_engine_sel, align 8
  %29 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %30 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* @engine_sel__mes_unmap_queues__compute, align 4
  %33 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %34 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  br label %65

36:                                               ; preds = %7, %7
  %37 = load i32, i32* %15, align 4
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i8*, i8** @extended_engine_sel__mes_unmap_queues__legacy_engine_sel, align 8
  %41 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %42 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* @engine_sel__mes_unmap_queues__sdma0, align 4
  %45 = load i32, i32* %15, align 4
  %46 = add i32 %44, %45
  %47 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %48 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %59

50:                                               ; preds = %36
  %51 = load i8*, i8** @extended_engine_sel__mes_unmap_queues__sdma0_to_7_sel, align 8
  %52 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %53 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %57 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %50, %39
  br label %65

60:                                               ; preds = %7
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %117

65:                                               ; preds = %59, %27
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* @action__mes_unmap_queues__reset_queues, align 4
  %70 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %71 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  br label %78

73:                                               ; preds = %65
  %74 = load i32, i32* @action__mes_unmap_queues__preempt_queues, align 4
  %75 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %76 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %12, align 4
  switch i32 %79, label %111 [
    i32 128, label %80
    i32 130, label %92
    i32 131, label %101
    i32 129, label %106
  ]

80:                                               ; preds = %78
  %81 = load i32, i32* @queue_sel__mes_unmap_queues__perform_request_on_specified_queues, align 4
  %82 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %83 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %86 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %90 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  br label %116

92:                                               ; preds = %78
  %93 = load i32, i32* @queue_sel__mes_unmap_queues__perform_request_on_pasid_queues, align 4
  %94 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %95 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %99 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  br label %116

101:                                              ; preds = %78
  %102 = load i32, i32* @queue_sel__mes_unmap_queues__unmap_all_queues, align 4
  %103 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %104 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  br label %116

106:                                              ; preds = %78
  %107 = load i32, i32* @queue_sel__mes_unmap_queues__unmap_all_non_static_queues, align 4
  %108 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %109 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  br label %116

111:                                              ; preds = %78
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %117

116:                                              ; preds = %106, %101, %92, %80
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %111, %60
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @pm_build_pm4_header(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_unmap_queues_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_vi.c_pm_unmap_queues_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32 }
%struct.pm4_mes_unmap_queues = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@IT_UNMAP_QUEUES = common dso_local global i32 0, align 4
@engine_sel__mes_unmap_queues__compute = common dso_local global i32 0, align 4
@engine_sel__mes_unmap_queues__sdma0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"queue type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@action__mes_unmap_queues__reset_queues = common dso_local global i32 0, align 4
@action__mes_unmap_queues__preempt_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__perform_request_on_specified_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__perform_request_on_pasid_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__unmap_all_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__unmap_all_non_static_queues = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"filter %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i8**, i32, i32, i8*, i32, i32)* @pm_unmap_queues_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_unmap_queues_vi(%struct.packet_manager* %0, i8** %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
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
  %20 = call i32 @memset(i8** %19, i32 0, i32 40)
  %21 = load i32, i32* @IT_UNMAP_QUEUES, align 4
  %22 = call i32 @pm_build_pm4_header(i32 %21, i32 40)
  %23 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %24 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %39 [
    i32 135, label %27
    i32 134, label %27
    i32 133, label %32
    i32 132, label %32
  ]

27:                                               ; preds = %7, %7
  %28 = load i32, i32* @engine_sel__mes_unmap_queues__compute, align 4
  %29 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %30 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  br label %44

32:                                               ; preds = %7, %7
  %33 = load i32, i32* @engine_sel__mes_unmap_queues__sdma0, align 4
  %34 = load i32, i32* %15, align 4
  %35 = add i32 %33, %34
  %36 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %37 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  br label %44

39:                                               ; preds = %7
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %96

44:                                               ; preds = %32, %27
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @action__mes_unmap_queues__reset_queues, align 4
  %49 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %50 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  br label %57

52:                                               ; preds = %44
  %53 = load i32, i32* @action__mes_unmap_queues__preempt_queues, align 4
  %54 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %55 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %12, align 4
  switch i32 %58, label %90 [
    i32 128, label %59
    i32 130, label %71
    i32 131, label %80
    i32 129, label %85
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* @queue_sel__mes_unmap_queues__perform_request_on_specified_queues, align 4
  %61 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %62 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %65 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %69 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %95

71:                                               ; preds = %57
  %72 = load i32, i32* @queue_sel__mes_unmap_queues__perform_request_on_pasid_queues, align 4
  %73 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %74 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i8*, i8** %13, align 8
  %77 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %78 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  br label %95

80:                                               ; preds = %57
  %81 = load i32, i32* @queue_sel__mes_unmap_queues__unmap_all_queues, align 4
  %82 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %83 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  br label %95

85:                                               ; preds = %57
  %86 = load i32, i32* @queue_sel__mes_unmap_queues__unmap_all_non_static_queues, align 4
  %87 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %16, align 8
  %88 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  br label %95

90:                                               ; preds = %57
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %96

95:                                               ; preds = %85, %80, %71, %59
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %90, %39
  %97 = load i32, i32* %8, align 4
  ret i32 %97
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

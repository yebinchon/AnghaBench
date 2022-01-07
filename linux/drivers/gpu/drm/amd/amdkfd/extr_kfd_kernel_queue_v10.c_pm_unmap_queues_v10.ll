; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_pm_unmap_queues_v10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_pm_unmap_queues_v10.c"
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
@.str = private unnamed_addr constant [15 x i8] c"queue type %d\0A\00", align 1
@action__mes_unmap_queues__reset_queues = common dso_local global i32 0, align 4
@action__mes_unmap_queues__preempt_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__perform_request_on_specified_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__perform_request_on_pasid_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__unmap_all_queues = common dso_local global i32 0, align 4
@queue_sel__mes_unmap_queues__unmap_all_non_static_queues = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"filter %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i8**, i32, i32, i8*, i32, i32)* @pm_unmap_queues_v10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_unmap_queues_v10(%struct.packet_manager* %0, i8** %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.packet_manager*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pm4_mes_unmap_queues*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i8**, i8*** %9, align 8
  %17 = bitcast i8** %16 to %struct.pm4_mes_unmap_queues*
  store %struct.pm4_mes_unmap_queues* %17, %struct.pm4_mes_unmap_queues** %15, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = call i32 @memset(i8** %18, i32 0, i32 40)
  %20 = load i32, i32* @IT_UNMAP_QUEUES, align 4
  %21 = call i32 @pm_build_pm4_header(i32 %20, i32 40)
  %22 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %23 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %38 [
    i32 135, label %26
    i32 134, label %26
    i32 133, label %31
    i32 132, label %31
  ]

26:                                               ; preds = %7, %7
  %27 = load i32, i32* @engine_sel__mes_unmap_queues__compute, align 4
  %28 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %29 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  br label %41

31:                                               ; preds = %7, %7
  %32 = load i32, i32* @engine_sel__mes_unmap_queues__sdma0, align 4
  %33 = load i32, i32* %14, align 4
  %34 = add i32 %32, %33
  %35 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %36 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  br label %41

38:                                               ; preds = %7
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %31, %26
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @action__mes_unmap_queues__reset_queues, align 4
  %46 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %47 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  br label %54

49:                                               ; preds = %41
  %50 = load i32, i32* @action__mes_unmap_queues__preempt_queues, align 4
  %51 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %52 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %11, align 4
  switch i32 %55, label %87 [
    i32 128, label %56
    i32 130, label %68
    i32 131, label %77
    i32 129, label %82
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* @queue_sel__mes_unmap_queues__perform_request_on_specified_queues, align 4
  %58 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %59 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %62 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %66 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  br label %90

68:                                               ; preds = %54
  %69 = load i32, i32* @queue_sel__mes_unmap_queues__perform_request_on_pasid_queues, align 4
  %70 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %71 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %75 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  br label %90

77:                                               ; preds = %54
  %78 = load i32, i32* @queue_sel__mes_unmap_queues__unmap_all_queues, align 4
  %79 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %80 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %90

82:                                               ; preds = %54
  %83 = load i32, i32* @queue_sel__mes_unmap_queues__unmap_all_non_static_queues, align 4
  %84 = load %struct.pm4_mes_unmap_queues*, %struct.pm4_mes_unmap_queues** %15, align 8
  %85 = getelementptr inbounds %struct.pm4_mes_unmap_queues, %struct.pm4_mes_unmap_queues* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %90

87:                                               ; preds = %54
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %82, %77, %68, %56
  ret i32 0
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

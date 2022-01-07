; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_xgmi_set_topology_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_xgmi_set_topology_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.psp_xgmi_topology_info = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ta_xgmi_shared_memory = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ta_xgmi_cmd_get_topology_info_input }
%struct.ta_xgmi_cmd_get_topology_info_input = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@TA_XGMI__MAX_CONNECTED_NODES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TA_COMMAND_XGMI__SET_TOPOLOGY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32, %struct.psp_xgmi_topology_info*)* @psp_v11_0_xgmi_set_topology_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v11_0_xgmi_set_topology_info(%struct.psp_context* %0, i32 %1, %struct.psp_xgmi_topology_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.psp_xgmi_topology_info*, align 8
  %8 = alloca %struct.ta_xgmi_shared_memory*, align 8
  %9 = alloca %struct.ta_xgmi_cmd_get_topology_info_input*, align 8
  %10 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.psp_xgmi_topology_info* %2, %struct.psp_xgmi_topology_info** %7, align 8
  %11 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %12 = icmp ne %struct.psp_xgmi_topology_info* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %15 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TA_XGMI__MAX_CONNECTED_NODES, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %105

22:                                               ; preds = %13
  %23 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %24 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ta_xgmi_shared_memory*
  store %struct.ta_xgmi_shared_memory* %27, %struct.ta_xgmi_shared_memory** %8, align 8
  %28 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %8, align 8
  %29 = call i32 @memset(%struct.ta_xgmi_shared_memory* %28, i32 0, i32 24)
  %30 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %8, align 8
  %31 = getelementptr inbounds %struct.ta_xgmi_shared_memory, %struct.ta_xgmi_shared_memory* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.ta_xgmi_cmd_get_topology_info_input* %32, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %33 = load i32, i32* @TA_COMMAND_XGMI__SET_TOPOLOGY_INFO, align 4
  %34 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %8, align 8
  %35 = getelementptr inbounds %struct.ta_xgmi_shared_memory, %struct.ta_xgmi_shared_memory* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %38 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %98, %22
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %42 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %39
  %46 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %47 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %55 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i32 %53, i32* %60, align 4
  %61 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %62 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %70 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %68, i32* %75, align 4
  %76 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %77 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %84 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %92 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %45
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %39

101:                                              ; preds = %39
  %102 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %103 = load i32, i32* @TA_COMMAND_XGMI__SET_TOPOLOGY_INFO, align 4
  %104 = call i32 @psp_xgmi_invoke(%struct.psp_context* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %19
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @memset(%struct.ta_xgmi_shared_memory*, i32, i32) #1

declare dso_local i32 @psp_xgmi_invoke(%struct.psp_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_xgmi_get_topology_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_xgmi_get_topology_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.psp_xgmi_topology_info = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.ta_xgmi_shared_memory = type { %struct.TYPE_10__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.ta_xgmi_cmd_get_topology_info_output }
%struct.ta_xgmi_cmd_get_topology_info_output = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.ta_xgmi_cmd_get_topology_info_input }
%struct.ta_xgmi_cmd_get_topology_info_input = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@TA_XGMI__MAX_CONNECTED_NODES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TA_COMMAND_XGMI__GET_GET_TOPOLOGY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32, %struct.psp_xgmi_topology_info*)* @psp_v11_0_xgmi_get_topology_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v11_0_xgmi_get_topology_info(%struct.psp_context* %0, i32 %1, %struct.psp_xgmi_topology_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.psp_xgmi_topology_info*, align 8
  %8 = alloca %struct.ta_xgmi_shared_memory*, align 8
  %9 = alloca %struct.ta_xgmi_cmd_get_topology_info_input*, align 8
  %10 = alloca %struct.ta_xgmi_cmd_get_topology_info_output*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.psp_xgmi_topology_info* %2, %struct.psp_xgmi_topology_info** %7, align 8
  %13 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %14 = icmp ne %struct.psp_xgmi_topology_info* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %17 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TA_XGMI__MAX_CONNECTED_NODES, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %201

24:                                               ; preds = %15
  %25 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %26 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ta_xgmi_shared_memory*
  store %struct.ta_xgmi_shared_memory* %29, %struct.ta_xgmi_shared_memory** %8, align 8
  %30 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %8, align 8
  %31 = call i32 @memset(%struct.ta_xgmi_shared_memory* %30, i32 0, i32 40)
  %32 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %8, align 8
  %33 = getelementptr inbounds %struct.ta_xgmi_shared_memory, %struct.ta_xgmi_shared_memory* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.ta_xgmi_cmd_get_topology_info_input* %34, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %35 = load i32, i32* @TA_COMMAND_XGMI__GET_GET_TOPOLOGY_INFO, align 4
  %36 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %8, align 8
  %37 = getelementptr inbounds %struct.ta_xgmi_shared_memory, %struct.ta_xgmi_shared_memory* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %40 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %108, %24
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %44 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %111

47:                                               ; preds = %41
  %48 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %49 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %57 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  store i32 %55, i32* %62, align 4
  %63 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %64 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %72 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store i32 %70, i32* %77, align 4
  %78 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %79 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %87 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %85, i32* %92, align 4
  %93 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %94 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ta_xgmi_cmd_get_topology_info_input*, %struct.ta_xgmi_cmd_get_topology_info_input** %9, align 8
  %102 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_input, %struct.ta_xgmi_cmd_get_topology_info_input* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 %100, i32* %107, align 4
  br label %108

108:                                              ; preds = %47
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %41

111:                                              ; preds = %41
  %112 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %113 = load i32, i32* @TA_COMMAND_XGMI__GET_GET_TOPOLOGY_INFO, align 4
  %114 = call i32 @psp_xgmi_invoke(%struct.psp_context* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %4, align 4
  br label %201

119:                                              ; preds = %111
  %120 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %8, align 8
  %121 = getelementptr inbounds %struct.ta_xgmi_shared_memory, %struct.ta_xgmi_shared_memory* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store %struct.ta_xgmi_cmd_get_topology_info_output* %122, %struct.ta_xgmi_cmd_get_topology_info_output** %10, align 8
  %123 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %8, align 8
  %124 = getelementptr inbounds %struct.ta_xgmi_shared_memory, %struct.ta_xgmi_shared_memory* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_output, %struct.ta_xgmi_cmd_get_topology_info_output* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %129 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %197, %119
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %133 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %200

136:                                              ; preds = %130
  %137 = load %struct.ta_xgmi_cmd_get_topology_info_output*, %struct.ta_xgmi_cmd_get_topology_info_output** %10, align 8
  %138 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_output, %struct.ta_xgmi_cmd_get_topology_info_output* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %146 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %145, i32 0, i32 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  store i32 %144, i32* %151, align 4
  %152 = load %struct.ta_xgmi_cmd_get_topology_info_output*, %struct.ta_xgmi_cmd_get_topology_info_output** %10, align 8
  %153 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_output, %struct.ta_xgmi_cmd_get_topology_info_output* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %161 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  store i32 %159, i32* %166, align 4
  %167 = load %struct.ta_xgmi_cmd_get_topology_info_output*, %struct.ta_xgmi_cmd_get_topology_info_output** %10, align 8
  %168 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_output, %struct.ta_xgmi_cmd_get_topology_info_output* %167, i32 0, i32 1
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %176 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %175, i32 0, i32 1
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  store i32 %174, i32* %181, align 4
  %182 = load %struct.ta_xgmi_cmd_get_topology_info_output*, %struct.ta_xgmi_cmd_get_topology_info_output** %10, align 8
  %183 = getelementptr inbounds %struct.ta_xgmi_cmd_get_topology_info_output, %struct.ta_xgmi_cmd_get_topology_info_output* %182, i32 0, i32 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.psp_xgmi_topology_info*, %struct.psp_xgmi_topology_info** %7, align 8
  %191 = getelementptr inbounds %struct.psp_xgmi_topology_info, %struct.psp_xgmi_topology_info* %190, i32 0, i32 1
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  store i32 %189, i32* %196, align 4
  br label %197

197:                                              ; preds = %136
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %130

200:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %200, %117, %21
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @memset(%struct.ta_xgmi_shared_memory*, i32, i32) #1

declare dso_local i32 @psp_xgmi_invoke(%struct.psp_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

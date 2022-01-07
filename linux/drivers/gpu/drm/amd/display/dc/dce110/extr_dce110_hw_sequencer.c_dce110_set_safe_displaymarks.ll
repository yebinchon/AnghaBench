; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_safe_displaymarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_safe_displaymarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_context = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, i64, i64, i64, i64, %struct.dce_watermarks*, i32)*, i32 (%struct.TYPE_9__*, i64, i64, i64, i64, %struct.dce_watermarks*, %struct.dce_watermarks*, i32)* }
%struct.dce_watermarks = type { i32, i32, i32, i32 }
%struct.resource_pool = type { i32 }

@MAX_WATERMARK = common dso_local global i32 0, align 4
@SAFE_NBP_MARK = common dso_local global i32 0, align 4
@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_set_safe_displaymarks(%struct.resource_context* %0, %struct.resource_pool* %1) #0 {
  %3 = alloca %struct.resource_context*, align 8
  %4 = alloca %struct.resource_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dce_watermarks, align 8
  %8 = alloca %struct.dce_watermarks, align 4
  %9 = alloca %struct.dce_watermarks, align 8
  store %struct.resource_context* %0, %struct.resource_context** %3, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %4, align 8
  %10 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %11 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %7, i32 0, i32 0
  %14 = load i32, i32* @MAX_WATERMARK, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %7, i32 0, i32 1
  %16 = load i32, i32* @MAX_WATERMARK, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %7, i32 0, i32 2
  %18 = load i32, i32* @MAX_WATERMARK, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %7, i32 0, i32 3
  %20 = load i32, i32* @MAX_WATERMARK, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %8, i32 0, i32 0
  %22 = load i32, i32* @SAFE_NBP_MARK, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %8, i32 0, i32 1
  %24 = load i32, i32* @SAFE_NBP_MARK, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %8, i32 0, i32 2
  %26 = load i32, i32* @SAFE_NBP_MARK, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %8, i32 0, i32 3
  %28 = load i32, i32* @SAFE_NBP_MARK, align 4
  store i32 %28, i32* %27, align 4
  %29 = bitcast %struct.dce_watermarks* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %130, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MAX_PIPES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %133

34:                                               ; preds = %30
  %35 = load %struct.resource_context*, %struct.resource_context** %3, align 8
  %36 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %34
  %45 = load %struct.resource_context*, %struct.resource_context** %3, align 8
  %46 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = icmp eq %struct.TYPE_9__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %44, %34
  br label %130

56:                                               ; preds = %44
  %57 = load %struct.resource_context*, %struct.resource_context** %3, align 8
  %58 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_9__*, i64, i64, i64, i64, %struct.dce_watermarks*, %struct.dce_watermarks*, i32)*, i32 (%struct.TYPE_9__*, i64, i64, i64, i64, %struct.dce_watermarks*, %struct.dce_watermarks*, i32)** %68, align 8
  %70 = load %struct.resource_context*, %struct.resource_context** %3, align 8
  %71 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i32, i32* @MAX_WATERMARK, align 4
  %80 = bitcast %struct.dce_watermarks* %8 to { i64, i64 }*
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 4
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 1
  %84 = load i64, i64* %83, align 4
  %85 = bitcast %struct.dce_watermarks* %7 to { i64, i64 }*
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 4
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 1
  %89 = load i64, i64* %88, align 4
  %90 = call i32 %69(%struct.TYPE_9__* %78, i64 %82, i64 %84, i64 %87, i64 %89, %struct.dce_watermarks* byval(%struct.dce_watermarks) align 8 %9, %struct.dce_watermarks* byval(%struct.dce_watermarks) align 8 %7, i32 %79)
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %56
  %95 = load %struct.resource_context*, %struct.resource_context** %3, align 8
  %96 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_9__*, i64, i64, i64, i64, %struct.dce_watermarks*, i32)*, i32 (%struct.TYPE_9__*, i64, i64, i64, i64, %struct.dce_watermarks*, i32)** %106, align 8
  %108 = load %struct.resource_context*, %struct.resource_context** %3, align 8
  %109 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* @MAX_WATERMARK, align 4
  %118 = bitcast %struct.dce_watermarks* %8 to { i64, i64 }*
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 4
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 1
  %122 = load i64, i64* %121, align 4
  %123 = bitcast %struct.dce_watermarks* %7 to { i64, i64 }*
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 4
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i32 0, i32 1
  %127 = load i64, i64* %126, align 4
  %128 = call i32 %107(%struct.TYPE_9__* %116, i64 %120, i64 %122, i64 %125, i64 %127, %struct.dce_watermarks* byval(%struct.dce_watermarks) align 8 %7, i32 %117)
  br label %129

129:                                              ; preds = %94, %56
  br label %130

130:                                              ; preds = %129, %55
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %30

133:                                              ; preds = %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

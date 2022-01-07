; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce112_compressor = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, %struct.dc_context*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.dc_context = type { %struct.TYPE_9__, %struct.dc_bios* }
%struct.TYPE_9__ = type { i32 }
%struct.dc_bios = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.dc_bios*, %struct.embedded_panel_info*)* }
%struct.embedded_panel_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@FBC_COMPRESS_RATIO_INVALID = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce112_compressor_construct(%struct.dce112_compressor* %0, %struct.dc_context* %1) #0 {
  %3 = alloca %struct.dce112_compressor*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.dc_bios*, align 8
  %6 = alloca %struct.embedded_panel_info, align 4
  store %struct.dce112_compressor* %0, %struct.dce112_compressor** %3, align 8
  store %struct.dc_context* %1, %struct.dc_context** %4, align 8
  %7 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %8 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %7, i32 0, i32 1
  %9 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  store %struct.dc_bios* %9, %struct.dc_bios** %5, align 8
  %10 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %11 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 14
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %15 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 14
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %20 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 14
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %25 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %28 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 14
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %33 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %39 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 14
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %2
  %44 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %45 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 14
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %50 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %51 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 13
  store %struct.dc_context* %49, %struct.dc_context** %52, align 8
  %53 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %54 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  store i32 0, i32* %55, align 8
  %56 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %57 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  store i32 0, i32* %58, align 4
  %59 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %60 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %64 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %67 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 12
  store i64 0, i64* %68, align 8
  %69 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %70 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @FBC_COMPRESS_RATIO_INVALID, align 4
  %73 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %74 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 10
  store i32 %72, i32* %75, align 8
  %76 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %77 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 9
  store i64 0, i64* %78, align 8
  %79 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %80 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %83 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 7
  store i64 0, i64* %84, align 8
  %85 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %86 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %89 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %92 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %95 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load i64, i64* @BP_RESULT_OK, align 8
  %98 = load %struct.dc_bios*, %struct.dc_bios** %5, align 8
  %99 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64 (%struct.dc_bios*, %struct.embedded_panel_info*)*, i64 (%struct.dc_bios*, %struct.embedded_panel_info*)** %101, align 8
  %103 = load %struct.dc_bios*, %struct.dc_bios** %5, align 8
  %104 = call i64 %102(%struct.dc_bios* %103, %struct.embedded_panel_info* %6)
  %105 = icmp eq i64 %97, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %43
  %107 = getelementptr inbounds %struct.embedded_panel_info, %struct.embedded_panel_info* %6, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %111 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 8
  %113 = getelementptr inbounds %struct.embedded_panel_info, %struct.embedded_panel_info* %6, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %117 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %106, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

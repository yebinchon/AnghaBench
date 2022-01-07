; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_dce110_compressor_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_dce110_compressor_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_compressor = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32*, i32, i64, i64, i64, i64, i32, i64, i64, i32, i64, i64, %struct.dc_context*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.dc_context = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FBC_COMPRESS_RATIO_INVALID = common dso_local global i32 0, align 4
@CONTROLLER_ID_UNDEFINED = common dso_local global i32 0, align 4
@dce110_compressor_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_compressor_construct(%struct.dce110_compressor* %0, %struct.dc_context* %1) #0 {
  %3 = alloca %struct.dce110_compressor*, align 8
  %4 = alloca %struct.dc_context*, align 8
  store %struct.dce110_compressor* %0, %struct.dce110_compressor** %3, align 8
  store %struct.dc_context* %1, %struct.dc_context** %4, align 8
  %5 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %6 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %10 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %15 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %18 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %23 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %28 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %29 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 14
  store %struct.dc_context* %27, %struct.dc_context** %30, align 8
  %31 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %32 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 13
  store i64 0, i64* %33, align 8
  %34 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %35 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 12
  store i64 0, i64* %36, align 8
  %37 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %38 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %42 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 11
  store i32 %40, i32* %43, align 8
  %44 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %45 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 10
  store i64 0, i64* %46, align 8
  %47 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %48 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 9
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @FBC_COMPRESS_RATIO_INVALID, align 4
  %51 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %52 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  store i32 %50, i32* %53, align 8
  %54 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %55 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %58 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %61 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %64 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %67 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load i32, i32* @CONTROLLER_ID_UNDEFINED, align 4
  %70 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %71 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 8
  %73 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %74 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %77 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32* @dce110_compressor_funcs, i32** %78, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

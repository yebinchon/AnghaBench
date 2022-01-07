; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_init_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_init_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.output_pixel_processor**, %struct.TYPE_6__* }
%struct.output_pixel_processor = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.output_pixel_processor*, i32, i32, %struct.tg_color*, i64, i64)* }
%struct.tg_color = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.timing_generator = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.timing_generator*, i64*, i64*, i64*)*, i32 (%struct.timing_generator*, i64*, i64*)* }

@COLOR_SPACE_SRGB = common dso_local global i32 0, align 4
@CONTROLLER_DP_TEST_PATTERN_SOLID_COLOR = common dso_local global i32 0, align 4
@COLOR_DEPTH_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_init_blank(%struct.dc* %0, %struct.timing_generator* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg_color, align 4
  %7 = alloca %struct.output_pixel_processor*, align 8
  %8 = alloca %struct.output_pixel_processor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.timing_generator* %1, %struct.timing_generator** %4, align 8
  %14 = bitcast %struct.tg_color* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store %struct.output_pixel_processor* null, %struct.output_pixel_processor** %7, align 8
  store %struct.output_pixel_processor* null, %struct.output_pixel_processor** %8, align 8
  %15 = load i32, i32* @COLOR_SPACE_SRGB, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dc*, %struct.dc** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @color_space_to_black_color(%struct.dc* %16, i32 %17, %struct.tg_color* %6)
  %19 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %20 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32 (%struct.timing_generator*, i64*, i64*)*, i32 (%struct.timing_generator*, i64*, i64*)** %22, align 8
  %24 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %25 = call i32 %23(%struct.timing_generator* %24, i64* %12, i64* %13)
  %26 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %27 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.timing_generator*, i64*, i64*, i64*)*, i32 (%struct.timing_generator*, i64*, i64*, i64*)** %29, align 8
  %31 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %32 = call i32 %30(%struct.timing_generator* %31, i64* %9, i64* %10, i64* %11)
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.dc*, %struct.dc** %3, align 8
  %35 = getelementptr inbounds %struct.dc, %struct.dc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %33, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.dc*, %struct.dc** %3, align 8
  %45 = getelementptr inbounds %struct.dc, %struct.dc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.output_pixel_processor**, %struct.output_pixel_processor*** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.output_pixel_processor*, %struct.output_pixel_processor** %48, i64 %49
  %51 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %50, align 8
  store %struct.output_pixel_processor* %51, %struct.output_pixel_processor** %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %52, 2
  br i1 %53, label %54, label %76

54:                                               ; preds = %2
  %55 = load i64, i64* %12, align 8
  %56 = udiv i64 %55, 2
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.dc*, %struct.dc** %3, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %57, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.dc*, %struct.dc** %3, align 8
  %69 = getelementptr inbounds %struct.dc, %struct.dc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.output_pixel_processor**, %struct.output_pixel_processor*** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds %struct.output_pixel_processor*, %struct.output_pixel_processor** %72, i64 %73
  %75 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %74, align 8
  store %struct.output_pixel_processor* %75, %struct.output_pixel_processor** %8, align 8
  br label %76

76:                                               ; preds = %54, %2
  %77 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %7, align 8
  %78 = getelementptr inbounds %struct.output_pixel_processor, %struct.output_pixel_processor* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32 (%struct.output_pixel_processor*, i32, i32, %struct.tg_color*, i64, i64)*, i32 (%struct.output_pixel_processor*, i32, i32, %struct.tg_color*, i64, i64)** %80, align 8
  %82 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %7, align 8
  %83 = load i32, i32* @CONTROLLER_DP_TEST_PATTERN_SOLID_COLOR, align 4
  %84 = load i32, i32* @COLOR_DEPTH_UNDEFINED, align 4
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 %81(%struct.output_pixel_processor* %82, i32 %83, i32 %84, %struct.tg_color* %6, i64 %85, i64 %86)
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %88, 2
  br i1 %89, label %90, label %102

90:                                               ; preds = %76
  %91 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %8, align 8
  %92 = getelementptr inbounds %struct.output_pixel_processor, %struct.output_pixel_processor* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32 (%struct.output_pixel_processor*, i32, i32, %struct.tg_color*, i64, i64)*, i32 (%struct.output_pixel_processor*, i32, i32, %struct.tg_color*, i64, i64)** %94, align 8
  %96 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %8, align 8
  %97 = load i32, i32* @CONTROLLER_DP_TEST_PATTERN_SOLID_COLOR, align 4
  %98 = load i32, i32* @COLOR_DEPTH_UNDEFINED, align 4
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 %95(%struct.output_pixel_processor* %96, i32 %97, i32 %98, %struct.tg_color* %6, i64 %99, i64 %100)
  br label %102

102:                                              ; preds = %90, %76
  %103 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %7, align 8
  %104 = call i32 @dcn20_hwss_wait_for_blank_complete(%struct.output_pixel_processor* %103)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @color_space_to_black_color(%struct.dc*, i32, %struct.tg_color*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @dcn20_hwss_wait_for_blank_complete(%struct.output_pixel_processor*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

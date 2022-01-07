; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_program_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_program_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.pipe_ctx = type { %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { %struct.TYPE_13__, %struct.TYPE_23__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_23__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_23__*, i32, i32*)* }
%struct.TYPE_20__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_14__*, %struct.tg_color*)* }
%struct.tg_color = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { i64 }

@VISUAL_CONFIRM_SURFACE = common dso_local global i64 0, align 8
@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @program_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_scaler(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.tg_color, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %6 = bitcast %struct.tg_color* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 12, i1 false)
  %7 = load %struct.dc*, %struct.dc** %3, align 8
  %8 = getelementptr inbounds %struct.dc, %struct.dc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VISUAL_CONFIRM_SURFACE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %15 = call i32 @get_surface_visual_confirm_color(%struct.pipe_ctx* %14, %struct.tg_color* %5)
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.dc*, %struct.dc** %3, align 8
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @color_space_to_black_color(%struct.dc* %17, i32 %22, %struct.tg_color* %5)
  br label %24

24:                                               ; preds = %16, %13
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)** %31, align 8
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 2
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = call i32 %32(%struct.TYPE_23__* %36, i32 %42, i32* %46)
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_14__*, %struct.tg_color*)*, i32 (%struct.TYPE_14__*, %struct.tg_color*)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_14__*, %struct.tg_color*)* %55, null
  br i1 %56, label %57, label %84

57:                                               ; preds = %24
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i32 0, i32 2
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %5, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %57
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_14__*, %struct.tg_color*)*, i32 (%struct.TYPE_14__*, %struct.tg_color*)** %77, align 8
  %79 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = call i32 %78(%struct.TYPE_14__* %82, %struct.tg_color* %5)
  br label %84

84:                                               ; preds = %70, %24
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_23__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_13__*)** %91, align 8
  %93 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = call i32 %92(%struct.TYPE_23__* %96, %struct.TYPE_13__* %99)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_surface_visual_confirm_color(%struct.pipe_ctx*, %struct.tg_color*) #2

declare dso_local i32 @color_space_to_black_color(%struct.dc*, i32, %struct.tg_color*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

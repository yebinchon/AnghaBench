; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_per_frame_crtc_position_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_per_frame_crtc_position_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, i64, i32*)*, i32 (%struct.TYPE_11__*, %struct.dcp_gsl_params*)* }
%struct.dcp_gsl_params = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"GSL: enabling trigger-reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GSL: waiting for reset to occur.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, i32, %struct.pipe_ctx**)* @dce110_enable_per_frame_crtc_position_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_enable_per_frame_crtc_position_reset(%struct.dc* %0, i32 %1, %struct.pipe_ctx** %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_ctx**, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca %struct.dcp_gsl_params, align 8
  %9 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pipe_ctx** %2, %struct.pipe_ctx*** %6, align 8
  %10 = load %struct.dc*, %struct.dc** %4, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 0
  %12 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  store %struct.dc_context* %12, %struct.dc_context** %7, align 8
  %13 = bitcast %struct.dcp_gsl_params* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %8, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %8, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %42, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %21, i64 %23
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %24, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32 (%struct.TYPE_11__*, %struct.dcp_gsl_params*)*, i32 (%struct.TYPE_11__*, %struct.dcp_gsl_params*)** %31, align 8
  %33 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %33, i64 %35
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %36, align 8
  %38 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = call i32 %32(%struct.TYPE_11__* %40, %struct.dcp_gsl_params* %8)
  br label %42

42:                                               ; preds = %20
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %16

45:                                               ; preds = %16
  %46 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %83, %45
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %52, i64 %54
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %55, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_11__*, i64, i32*)*, i32 (%struct.TYPE_11__*, i64, i32*)** %62, align 8
  %64 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %64, i64 %66
  %68 = load %struct.pipe_ctx*, %struct.pipe_ctx** %67, align 8
  %69 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %8, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %74, i64 %76
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %77, align 8
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 %63(%struct.TYPE_11__* %71, i64 %73, i32* %81)
  br label %83

83:                                               ; preds = %51
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %47

86:                                               ; preds = %47
  %87 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %103, %86
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %94 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %94, i64 %96
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %97, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call i32 @wait_for_reset_trigger_to_occur(%struct.dc_context* %93, %struct.TYPE_11__* %101)
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %88

106:                                              ; preds = %88
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %133, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %112, i64 %114
  %116 = load %struct.pipe_ctx*, %struct.pipe_ctx** %115, align 8
  %117 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %122, align 8
  %124 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %124, i64 %126
  %128 = load %struct.pipe_ctx*, %struct.pipe_ctx** %127, align 8
  %129 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = call i32 %123(%struct.TYPE_11__* %131)
  br label %133

133:                                              ; preds = %111
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %107

136:                                              ; preds = %107
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DC_SYNC_INFO(i8*) #2

declare dso_local i32 @wait_for_reset_trigger_to_occur(%struct.dc_context*, %struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

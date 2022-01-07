; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_timing_synchronization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_timing_synchronization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, %struct.dcp_gsl_params*)* }
%struct.dcp_gsl_params = type { i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"GSL: Setting-up...\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GSL: enabling trigger-reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GSL: waiting for reset to occur.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"GSL: Restoring register states.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GSL: Set-up complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, i32, i32, %struct.pipe_ctx**)* @dce110_enable_timing_synchronization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_enable_timing_synchronization(%struct.dc* %0, i32 %1, i32 %2, %struct.pipe_ctx** %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pipe_ctx**, align 8
  %9 = alloca %struct.dc_context*, align 8
  %10 = alloca %struct.dcp_gsl_params, align 8
  %11 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.pipe_ctx** %3, %struct.pipe_ctx*** %8, align 8
  %12 = load %struct.dc*, %struct.dc** %5, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 0
  %14 = load %struct.dc_context*, %struct.dc_context** %13, align 8
  store %struct.dc_context* %14, %struct.dc_context** %9, align 8
  %15 = bitcast %struct.dcp_gsl_params* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %10, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %19 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %18, i64 0
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %53, %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %32, i64 %34
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %35, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32 (%struct.TYPE_10__*, %struct.dcp_gsl_params*)*, i32 (%struct.TYPE_10__*, %struct.dcp_gsl_params*)** %42, align 8
  %44 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %44, i64 %46
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %47, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 %43(%struct.TYPE_10__* %51, %struct.dcp_gsl_params* %10)
  br label %53

53:                                               ; preds = %31
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %27

56:                                               ; preds = %27
  %57 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %58

58:                                               ; preds = %86, %56
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %63, i64 %65
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %66, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** %73, align 8
  %75 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %75, i64 %77
  %79 = load %struct.pipe_ctx*, %struct.pipe_ctx** %78, align 8
  %80 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %10, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 %74(%struct.TYPE_10__* %82, i64 %84)
  br label %86

86:                                               ; preds = %62
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %58

89:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %127, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %90
  %95 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %97 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %97, i64 %99
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %100, align 8
  %102 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @wait_for_reset_trigger_to_occur(%struct.dc_context* %96, %struct.TYPE_10__* %104)
  %106 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %106, i64 %108
  %110 = load %struct.pipe_ctx*, %struct.pipe_ctx** %109, align 8
  %111 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %116, align 8
  %118 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %118, i64 %120
  %122 = load %struct.pipe_ctx*, %struct.pipe_ctx** %121, align 8
  %123 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = call i32 %117(%struct.TYPE_10__* %125)
  br label %127

127:                                              ; preds = %94
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %90

130:                                              ; preds = %90
  %131 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %158, %130
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %132
  %137 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %137, i64 %139
  %141 = load %struct.pipe_ctx*, %struct.pipe_ctx** %140, align 8
  %142 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %147, align 8
  %149 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %149, i64 %151
  %153 = load %struct.pipe_ctx*, %struct.pipe_ctx** %152, align 8
  %154 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = call i32 %148(%struct.TYPE_10__* %156)
  br label %158

158:                                              ; preds = %136
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %132

161:                                              ; preds = %132
  %162 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DC_SYNC_INFO(i8*) #2

declare dso_local i32 @wait_for_reset_trigger_to_occur(%struct.dc_context*, %struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

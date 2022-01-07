; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_log_tf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_log_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_transfer_func = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Gamma Correction TF\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Logging all tf points...\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Logging all channels...\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"R\09%d\09%llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"G\09%d\09%llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"B\09%d\09%llu\0A\00", align 1
@MAX_NUM_HW_POINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_context*, %struct.dc_transfer_func*, i32)* @log_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_tf(%struct.dc_context* %0, %struct.dc_transfer_func* %1, i32 %2) #0 {
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.dc_transfer_func*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.dc_transfer_func* %1, %struct.dc_transfer_func** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %9 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DC_LOGGER_INIT(i32 %10)
  %12 = call i32 (i8*, ...) @DC_LOG_GAMMA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @DC_LOG_ALL_GAMMA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @DC_LOG_ALL_TF_CHANNELS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %22 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @DC_LOG_GAMMA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %33 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @DC_LOG_ALL_TF_CHANNELS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %44 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @DC_LOG_ALL_TF_CHANNELS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %51)
  br label %53

53:                                               ; preds = %19
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %96, %56
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MAX_NUM_HW_POINTS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %65 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @DC_LOG_ALL_GAMMA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %76 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @DC_LOG_ALL_TF_CHANNELS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %87 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @DC_LOG_ALL_TF_CHANNELS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %94)
  br label %96

96:                                               ; preds = %62
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %58

99:                                               ; preds = %58
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @DC_LOG_GAMMA(i8*, ...) #1

declare dso_local i32 @DC_LOG_ALL_GAMMA(i8*, ...) #1

declare dso_local i32 @DC_LOG_ALL_TF_CHANNELS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

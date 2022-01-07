; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_enable_per_frame_crtc_position_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_enable_per_frame_crtc_position_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, i32, i32*)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Setting up\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Waiting for trigger\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Multi-display sync is complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, i32, %struct.pipe_ctx**)* @dcn10_enable_per_frame_crtc_position_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_enable_per_frame_crtc_position_reset(%struct.dc* %0, i32 %1, %struct.pipe_ctx** %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_ctx**, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pipe_ctx** %2, %struct.pipe_ctx*** %6, align 8
  %9 = load %struct.dc*, %struct.dc** %4, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 0
  %11 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  store %struct.dc_context* %11, %struct.dc_context** %7, align 8
  %12 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %62, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %13
  %18 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %18, i64 %20
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %21, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_9__*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_9__*, i32, i32*)* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %17
  %32 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %32, i64 %34
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %35, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_9__*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32*)** %42, align 8
  %44 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %44, i64 %46
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %47, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %52, i64 %54
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %55, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 %43(%struct.TYPE_9__* %51, i32 0, i32* %59)
  br label %61

61:                                               ; preds = %31, %17
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %13

65:                                               ; preds = %13
  %66 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %82, %65
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %73 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %73, i64 %75
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %76, align 8
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = call i32 @wait_for_reset_trigger_to_occur(%struct.dc_context* %72, %struct.TYPE_9__* %80)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %67

85:                                               ; preds = %67
  %86 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DC_SYNC_INFO(i8*) #1

declare dso_local i32 @wait_for_reset_trigger_to_occur(%struct.dc_context*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

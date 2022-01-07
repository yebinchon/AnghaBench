; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_reset_hw_ctx_wrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_reset_hw_ctx_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.clock_source*, i32, i64 }
%struct.clock_source = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.clock_source*)* }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.pipe_ctx* }
%struct.TYPE_7__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.pipe_ctx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dcn10_reset_hw_ctx_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_reset_hw_ctx_wrap(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_ctx*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca %struct.clock_source*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %9 = load %struct.dc*, %struct.dc** %3, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %93, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %96

18:                                               ; preds = %15
  %19 = load %struct.dc*, %struct.dc** %3, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i64 %26
  store %struct.pipe_ctx* %27, %struct.pipe_ctx** %6, align 8
  %28 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %29 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i64 %33
  store %struct.pipe_ctx* %34, %struct.pipe_ctx** %7, align 8
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %18
  br label %93

40:                                               ; preds = %18
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %93

46:                                               ; preds = %40
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %54 = call i64 @pipe_need_reprogram(%struct.pipe_ctx* %52, %struct.pipe_ctx* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %51, %46
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i32 0, i32 0
  %59 = load %struct.clock_source*, %struct.clock_source** %58, align 8
  store %struct.clock_source* %59, %struct.clock_source** %8, align 8
  %60 = load %struct.dc*, %struct.dc** %3, align 8
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %62 = load %struct.dc*, %struct.dc** %3, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = call i32 @dcn10_reset_back_end_for_pipe(%struct.dc* %60, %struct.pipe_ctx* %61, %struct.TYPE_12__* %64)
  %66 = load %struct.dc*, %struct.dc** %3, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %68, align 8
  %70 = icmp ne i32 (%struct.dc.0*, %struct.pipe_ctx*)* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %56
  %72 = load %struct.dc*, %struct.dc** %3, align 8
  %73 = getelementptr inbounds %struct.dc, %struct.dc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %74, align 8
  %76 = load %struct.dc*, %struct.dc** %3, align 8
  %77 = bitcast %struct.dc* %76 to %struct.dc.0*
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %79 = call i32 %75(%struct.dc.0* %77, %struct.pipe_ctx* %78)
  br label %80

80:                                               ; preds = %71, %56
  %81 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %82 = icmp ne %struct.clock_source* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %85 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32 (%struct.clock_source*)*, i32 (%struct.clock_source*)** %87, align 8
  %89 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %90 = call i32 %88(%struct.clock_source* %89)
  br label %91

91:                                               ; preds = %83, %80
  br label %92

92:                                               ; preds = %91, %51
  br label %93

93:                                               ; preds = %92, %45, %39
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %5, align 4
  br label %15

96:                                               ; preds = %15
  ret void
}

declare dso_local i64 @pipe_need_reprogram(%struct.pipe_ctx*, %struct.pipe_ctx*) #1

declare dso_local i32 @dcn10_reset_back_end_for_pipe(%struct.dc*, %struct.pipe_ctx*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

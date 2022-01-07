; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_reset_hw_ctx_wrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_reset_hw_ctx_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.clock_source*, i32, i64, i64 }
%struct.clock_source = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.clock_source*)* }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.pipe_ctx* }
%struct.TYPE_7__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.pipe_ctx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dcn20_reset_hw_ctx_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_reset_hw_ctx_wrap(%struct.dc* %0, %struct.dc_state* %1) #0 {
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

15:                                               ; preds = %98, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %101

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
  br label %98

40:                                               ; preds = %18
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  br label %98

51:                                               ; preds = %45
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %59 = call i64 @pipe_need_reprogram(%struct.pipe_ctx* %57, %struct.pipe_ctx* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %56, %51
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 0
  %64 = load %struct.clock_source*, %struct.clock_source** %63, align 8
  store %struct.clock_source* %64, %struct.clock_source** %8, align 8
  %65 = load %struct.dc*, %struct.dc** %3, align 8
  %66 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %67 = load %struct.dc*, %struct.dc** %3, align 8
  %68 = getelementptr inbounds %struct.dc, %struct.dc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = call i32 @dcn20_reset_back_end_for_pipe(%struct.dc* %65, %struct.pipe_ctx* %66, %struct.TYPE_12__* %69)
  %71 = load %struct.dc*, %struct.dc** %3, align 8
  %72 = getelementptr inbounds %struct.dc, %struct.dc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %73, align 8
  %75 = icmp ne i32 (%struct.dc.0*, %struct.pipe_ctx*)* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %61
  %77 = load %struct.dc*, %struct.dc** %3, align 8
  %78 = getelementptr inbounds %struct.dc, %struct.dc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %79, align 8
  %81 = load %struct.dc*, %struct.dc** %3, align 8
  %82 = bitcast %struct.dc* %81 to %struct.dc.0*
  %83 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %84 = call i32 %80(%struct.dc.0* %82, %struct.pipe_ctx* %83)
  br label %85

85:                                               ; preds = %76, %61
  %86 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %87 = icmp ne %struct.clock_source* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %90 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32 (%struct.clock_source*)*, i32 (%struct.clock_source*)** %92, align 8
  %94 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %95 = call i32 %93(%struct.clock_source* %94)
  br label %96

96:                                               ; preds = %88, %85
  br label %97

97:                                               ; preds = %96, %56
  br label %98

98:                                               ; preds = %97, %50, %39
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %5, align 4
  br label %15

101:                                              ; preds = %15
  ret void
}

declare dso_local i64 @pipe_need_reprogram(%struct.pipe_ctx*, %struct.pipe_ctx*) #1

declare dso_local i32 @dcn20_reset_back_end_for_pipe(%struct.dc*, %struct.pipe_ctx*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

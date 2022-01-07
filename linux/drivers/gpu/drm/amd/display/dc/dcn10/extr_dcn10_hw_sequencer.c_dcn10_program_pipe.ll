; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_program_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_program_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.pipe_ctx = type { i32, %struct.TYPE_8__* }
%struct.dc_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_program_pipe(%struct.dc* %0, %struct.pipe_ctx* %1, %struct.dc_state* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %2, %struct.dc_state** %6, align 8
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.dc*, %struct.dc** %4, align 8
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %18 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %19 = call i32 @dcn10_enable_plane(%struct.dc* %16, %struct.pipe_ctx* %17, %struct.dc_state* %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.dc*, %struct.dc** %4, align 8
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %23 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %24 = call i32 @update_dchubp_dpp(%struct.dc* %21, %struct.pipe_ctx* %22, %struct.dc_state* %23)
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %26 = call i32 @set_hdr_multiplier(%struct.pipe_ctx* %25)
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %20
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %44, %35, %20
  %54 = load %struct.dc*, %struct.dc** %4, align 8
  %55 = getelementptr inbounds %struct.dc, %struct.dc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32 (%struct.pipe_ctx*, %struct.TYPE_8__*)*, i32 (%struct.pipe_ctx*, %struct.TYPE_8__*)** %56, align 8
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 %57(%struct.pipe_ctx* %58, %struct.TYPE_8__* %61)
  br label %63

63:                                               ; preds = %53, %44
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %63
  %73 = load %struct.dc*, %struct.dc** %4, align 8
  %74 = getelementptr inbounds %struct.dc, %struct.dc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, i32)** %75, align 8
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %76(%struct.pipe_ctx* %77, i32 %80)
  br label %82

82:                                               ; preds = %72, %63
  ret void
}

declare dso_local i32 @dcn10_enable_plane(%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*) #1

declare dso_local i32 @update_dchubp_dpp(%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*) #1

declare dso_local i32 @set_hdr_multiplier(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

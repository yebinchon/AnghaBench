; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_enable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_enable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.dce_hwseq* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.dce_hwseq = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.dc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*)* @dcn10_enable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_enable_plane(%struct.dc* %0, %struct.pipe_ctx* %1, %struct.dc_state* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dce_hwseq*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %2, %struct.dc_state** %6, align 8
  %8 = load %struct.dc*, %struct.dc** %4, align 8
  %9 = getelementptr inbounds %struct.dc, %struct.dc* %8, i32 0, i32 2
  %10 = load %struct.dce_hwseq*, %struct.dce_hwseq** %9, align 8
  store %struct.dce_hwseq* %10, %struct.dce_hwseq** %7, align 8
  %11 = load %struct.dc*, %struct.dc** %4, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.dc*, %struct.dc** %4, align 8
  %18 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.dc*, %struct.dc** %4, align 8
  %21 = call i32 @undo_DEGVIDCN10_253_wa(%struct.dc* %20)
  %22 = load %struct.dc*, %struct.dc** %4, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 2
  %24 = load %struct.dce_hwseq*, %struct.dce_hwseq** %23, align 8
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @power_on_plane(%struct.dce_hwseq* %24, i32 %30)
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %38, align 8
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = call i32 %39(%struct.TYPE_17__* %43, i32 1)
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %51, align 8
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = call i32 %52(%struct.TYPE_16__* %56, i32 1)
  %58 = load %struct.dc*, %struct.dc** %4, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %19
  %64 = load %struct.dce_hwseq*, %struct.dce_hwseq** %7, align 8
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = call i32 @dcn10_program_pte_vm(%struct.dce_hwseq* %64, %struct.TYPE_17__* %68)
  br label %70

70:                                               ; preds = %63, %19
  %71 = load %struct.dc*, %struct.dc** %4, align 8
  %72 = getelementptr inbounds %struct.dc, %struct.dc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.dc*, %struct.dc** %4, align 8
  %78 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %77)
  br label %79

79:                                               ; preds = %76, %70
  ret void
}

declare dso_local i32 @dcn10_verify_allow_pstate_change_high(%struct.dc*) #1

declare dso_local i32 @undo_DEGVIDCN10_253_wa(%struct.dc*) #1

declare dso_local i32 @power_on_plane(%struct.dce_hwseq*, i32) #1

declare dso_local i32 @dcn10_program_pte_vm(%struct.dce_hwseq*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

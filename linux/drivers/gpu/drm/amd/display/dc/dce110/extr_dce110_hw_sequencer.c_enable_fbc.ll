; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_enable_fbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_enable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_15__*, %struct.compressor* }
%struct.TYPE_15__ = type { i32 }
%struct.compressor = type { %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32 (%struct.compressor*, %struct.compr_addr_and_pitch_params*)*, i32 (%struct.compressor*, i32)*, i32 (%struct.compressor*, %struct.compr_addr_and_pitch_params*)* }
%struct.compr_addr_and_pitch_params = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @enable_fbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_fbc(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.compr_addr_and_pitch_params, align 4
  %7 = alloca %struct.compressor*, align 8
  %8 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.dc*, %struct.dc** %3, align 8
  %10 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %11 = call i64 @should_enable_fbc(%struct.dc* %9, %struct.dc_state* %10, i64* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %2
  %14 = bitcast %struct.compr_addr_and_pitch_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.dc*, %struct.dc** %3, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 1
  %17 = load %struct.compressor*, %struct.compressor** %16, align 8
  store %struct.compressor* %17, %struct.compressor** %7, align 8
  %18 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %19 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i64 %22
  store %struct.pipe_ctx* %23, %struct.pipe_ctx** %8, align 8
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.dc*, %struct.dc** %3, align 8
  %46 = getelementptr inbounds %struct.dc, %struct.dc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.compressor*, %struct.compressor** %7, align 8
  %51 = getelementptr inbounds %struct.compressor, %struct.compressor* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.compressor*, %struct.compressor** %7, align 8
  %54 = getelementptr inbounds %struct.compressor, %struct.compressor* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i32 (%struct.compressor*, %struct.compr_addr_and_pitch_params*)*, i32 (%struct.compressor*, %struct.compr_addr_and_pitch_params*)** %56, align 8
  %58 = load %struct.compressor*, %struct.compressor** %7, align 8
  %59 = call i32 %57(%struct.compressor* %58, %struct.compr_addr_and_pitch_params* %6)
  %60 = load %struct.compressor*, %struct.compressor** %7, align 8
  %61 = getelementptr inbounds %struct.compressor, %struct.compressor* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32 (%struct.compressor*, i32)*, i32 (%struct.compressor*, i32)** %63, align 8
  %65 = load %struct.compressor*, %struct.compressor** %7, align 8
  %66 = call i32 %64(%struct.compressor* %65, i32 1)
  %67 = load %struct.compressor*, %struct.compressor** %7, align 8
  %68 = getelementptr inbounds %struct.compressor, %struct.compressor* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32 (%struct.compressor*, %struct.compr_addr_and_pitch_params*)*, i32 (%struct.compressor*, %struct.compr_addr_and_pitch_params*)** %70, align 8
  %72 = load %struct.compressor*, %struct.compressor** %7, align 8
  %73 = call i32 %71(%struct.compressor* %72, %struct.compr_addr_and_pitch_params* %6)
  br label %74

74:                                               ; preds = %13, %2
  ret void
}

declare dso_local i64 @should_enable_fbc(%struct.dc*, %struct.dc_state*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

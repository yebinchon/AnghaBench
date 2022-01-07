; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_update_pending_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_update_pending_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.dc_plane_state* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_16__*)* }
%struct.dc_plane_state = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i64 }

@PLN_ADDR_TYPE_GRPH_STEREO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @dce110_update_pending_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_update_pending_status(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_plane_state*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %4 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %4, i32 0, i32 2
  %6 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  store %struct.dc_plane_state* %6, %struct.dc_plane_state** %3, align 8
  %7 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %8 = icmp eq %struct.dc_plane_state* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %100

10:                                               ; preds = %1
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %17, align 8
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = call i64 %18(%struct.TYPE_16__* %22)
  %24 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %25 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  store i64 %23, i64* %26, align 8
  %27 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %28 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %10
  %33 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %34 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = bitcast %struct.TYPE_10__* %42 to i8*
  %49 = bitcast %struct.TYPE_10__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  br label %50

50:                                               ; preds = %37, %32, %10
  %51 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %52 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = bitcast %struct.TYPE_10__* %53 to i8*
  %60 = bitcast %struct.TYPE_10__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 8, i1 false)
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PLN_ADDR_TYPE_GRPH_STEREO, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %50
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %77, align 8
  %79 = icmp ne i32 (%struct.TYPE_15__*)* %78, null
  br i1 %79, label %80, label %100

80:                                               ; preds = %70
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %82 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %87, align 8
  %89 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %90 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = call i32 %88(%struct.TYPE_15__* %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %98 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %100

100:                                              ; preds = %9, %80, %70, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_update_pending_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_update_pending_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_13__, %struct.TYPE_9__, %struct.dc_plane_state* }
%struct.TYPE_13__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.timing_generator*)* }
%struct.TYPE_9__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_14__*)* }
%struct.dc_plane_state = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@PLN_ADDR_TYPE_GRPH_STEREO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @dcn10_update_pending_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_update_pending_status(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_plane_state*, align 8
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 2
  %8 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  store %struct.dc_plane_state* %8, %struct.dc_plane_state** %3, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.timing_generator*, %struct.timing_generator** %11, align 8
  store %struct.timing_generator* %12, %struct.timing_generator** %4, align 8
  %13 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %14 = icmp eq %struct.dc_plane_state* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %87

16:                                               ; preds = %1
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %23, align 8
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call i32 %24(%struct.TYPE_14__* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %31 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %16
  %39 = phi i1 [ true, %16 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %42 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %48 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %51 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = bitcast %struct.TYPE_10__* %49 to i8*
  %54 = bitcast %struct.TYPE_10__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  br label %55

55:                                               ; preds = %46, %38
  %56 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %57 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PLN_ADDR_TYPE_GRPH_STEREO, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %55
  %64 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %65 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %67, align 8
  %69 = icmp ne i32 (%struct.timing_generator*)* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %72 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %74, align 8
  %76 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.timing_generator*, %struct.timing_generator** %78, align 8
  %80 = call i32 %75(%struct.timing_generator* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %85 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %15, %70, %63, %55
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

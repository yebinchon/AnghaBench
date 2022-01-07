; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_update_plane_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_update_plane_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.pipe_ctx = type { %struct.dc_plane_state*, %struct.TYPE_8__ }
%struct.dc_plane_state = type { %struct.TYPE_12__, %struct.TYPE_9__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dcn10_update_plane_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_update_plane_addr(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 0
  %10 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  store %struct.dc_plane_state* %10, %struct.dc_plane_state** %7, align 8
  %11 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %12 = icmp eq %struct.dc_plane_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %16 = call i32 @patch_address_for_sbs_tb_stereo(%struct.pipe_ctx* %15, i32* %6)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i64)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i64)** %23, align 8
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %30 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %29, i32 0, i32 0
  %31 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %32 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 %24(%struct.TYPE_11__* %28, %struct.TYPE_12__* %30, i64 %33)
  %35 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %36 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %39 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_12__* %37 to i8*
  %41 = bitcast %struct.TYPE_12__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %41, i64 4, i1 false)
  %42 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %43 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %14
  %47 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %48 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %51 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %50, i32 0, i32 0
  %52 = bitcast %struct.TYPE_12__* %49 to i8*
  %53 = bitcast %struct.TYPE_12__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 8 %53, i64 4, i1 false)
  br label %54

54:                                               ; preds = %46, %14
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 0
  %61 = load %struct.dc_plane_state*, %struct.dc_plane_state** %60, align 8
  %62 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 %58, i32* %64, align 8
  br label %65

65:                                               ; preds = %13, %57, %54
  ret void
}

declare dso_local i32 @patch_address_for_sbs_tb_stereo(%struct.pipe_ctx*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

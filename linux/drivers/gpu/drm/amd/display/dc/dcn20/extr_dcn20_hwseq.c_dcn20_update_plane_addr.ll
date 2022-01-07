; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_update_plane_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_update_plane_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.pipe_ctx = type { %struct.dc_plane_state*, %struct.TYPE_8__ }
%struct.dc_plane_state = type { %struct.TYPE_12__, %struct.TYPE_9__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dcn20_update_plane_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_update_plane_addr(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
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
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %16 = call i32 @patch_address_for_sbs_tb_stereo(%struct.pipe_ctx* %15, i32* %6)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dc*, %struct.dc** %3, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %21 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vm_helper_mark_vmid_used(i32 %19, i32 %23, i32 %29)
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i64)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i64)** %37, align 8
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %44 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %43, i32 0, i32 0
  %45 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %46 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 %38(%struct.TYPE_11__* %42, %struct.TYPE_12__* %44, i64 %47)
  %49 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %50 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %53 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %52, i32 0, i32 0
  %54 = bitcast %struct.TYPE_12__* %51 to i8*
  %55 = bitcast %struct.TYPE_12__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false)
  %56 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %57 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %14
  %61 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %62 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %65 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %64, i32 0, i32 0
  %66 = bitcast %struct.TYPE_12__* %63 to i8*
  %67 = bitcast %struct.TYPE_12__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 8, i1 false)
  br label %68

68:                                               ; preds = %60, %14
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %73, i32 0, i32 0
  %75 = load %struct.dc_plane_state*, %struct.dc_plane_state** %74, align 8
  %76 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 %72, i32* %78, align 8
  br label %79

79:                                               ; preds = %13, %71, %68
  ret void
}

declare dso_local i32 @patch_address_for_sbs_tb_stereo(%struct.pipe_ctx*, i32*) #1

declare dso_local i32 @vm_helper_mark_vmid_used(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

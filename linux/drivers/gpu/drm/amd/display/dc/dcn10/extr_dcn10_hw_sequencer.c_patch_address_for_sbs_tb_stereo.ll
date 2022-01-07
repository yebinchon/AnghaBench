; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_patch_address_for_sbs_tb_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_patch_address_for_sbs_tb_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_8__*, %struct.dc_plane_state*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.dc_plane_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.dc_plane_state* }

@PLN_ADDR_TYPE_GRPH_STEREO = common dso_local global i64 0, align 8
@TIMING_3D_FORMAT_SIDE_BY_SIDE = common dso_local global i64 0, align 8
@TIMING_3D_FORMAT_TOP_AND_BOTTOM = common dso_local global i64 0, align 8
@VIEW_3D_FORMAT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, i32*)* @patch_address_for_sbs_tb_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_address_for_sbs_tb_stereo(%struct.pipe_ctx* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dc_plane_state*, align 8
  %7 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 1
  %10 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  store %struct.dc_plane_state* %10, %struct.dc_plane_state** %6, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.dc_plane_state*, %struct.dc_plane_state** %19, align 8
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 1
  %23 = load %struct.dc_plane_state*, %struct.dc_plane_state** %22, align 8
  %24 = icmp eq %struct.dc_plane_state* %20, %23
  br label %25

25:                                               ; preds = %15, %2
  %26 = phi i1 [ false, %2 ], [ %24, %15 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %25
  %31 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %32 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PLN_ADDR_TYPE_GRPH_STEREO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %30
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TIMING_3D_FORMAT_SIDE_BY_SIDE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TIMING_3D_FORMAT_TOP_AND_BOTTOM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %46, %37
  %56 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %57 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %63 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %68 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  store i32 1, i32* %3, align 4
  br label %102

71:                                               ; preds = %46, %30, %25
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VIEW_3D_FORMAT_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %71
  %80 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %81 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PLN_ADDR_TYPE_GRPH_STEREO, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load i64, i64* @PLN_ADDR_TYPE_GRPH_STEREO, align 8
  %88 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %89 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %92 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %97 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %86, %79, %71
  br label %101

101:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %55
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

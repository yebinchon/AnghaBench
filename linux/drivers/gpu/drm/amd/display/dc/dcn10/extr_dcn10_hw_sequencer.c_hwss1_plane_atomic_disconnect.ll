; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_hwss1_plane_atomic_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_hwss1_plane_atomic_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_14__, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_9__ = type { %struct.mpc* }
%struct.mpc = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)*, %struct.mpcc* (%struct.mpc_tree*, i32)* }
%struct.mpc_tree = type { i32 }
%struct.mpcc = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_8__*, %struct.hubp* }
%struct.TYPE_8__ = type { i32 }
%struct.hubp = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.hubp*)* }
%struct.TYPE_10__ = type { %struct.output_pixel_processor* }
%struct.output_pixel_processor = type { i32*, %struct.mpc_tree }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hwss1_plane_atomic_disconnect(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.hubp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpc*, align 8
  %8 = alloca %struct.mpc_tree*, align 8
  %9 = alloca %struct.mpcc*, align 8
  %10 = alloca %struct.output_pixel_processor*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.hubp*, %struct.hubp** %13, align 8
  store %struct.hubp* %14, %struct.hubp** %5, align 8
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dc*, %struct.dc** %3, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.mpc*, %struct.mpc** %24, align 8
  store %struct.mpc* %25, %struct.mpc** %7, align 8
  store %struct.mpcc* null, %struct.mpcc** %9, align 8
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %28, align 8
  store %struct.output_pixel_processor* %29, %struct.output_pixel_processor** %10, align 8
  %30 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %10, align 8
  %31 = getelementptr inbounds %struct.output_pixel_processor, %struct.output_pixel_processor* %30, i32 0, i32 1
  store %struct.mpc_tree* %31, %struct.mpc_tree** %8, align 8
  %32 = load %struct.mpc*, %struct.mpc** %7, align 8
  %33 = getelementptr inbounds %struct.mpc, %struct.mpc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.mpcc* (%struct.mpc_tree*, i32)*, %struct.mpcc* (%struct.mpc_tree*, i32)** %35, align 8
  %37 = load %struct.mpc_tree*, %struct.mpc_tree** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.mpcc* %36(%struct.mpc_tree* %37, i32 %38)
  store %struct.mpcc* %39, %struct.mpcc** %9, align 8
  %40 = load %struct.mpcc*, %struct.mpcc** %9, align 8
  %41 = icmp eq %struct.mpcc* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  br label %90

43:                                               ; preds = %2
  %44 = load %struct.mpc*, %struct.mpc** %7, align 8
  %45 = getelementptr inbounds %struct.mpc, %struct.mpc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)*, i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)** %47, align 8
  %49 = load %struct.mpc*, %struct.mpc** %7, align 8
  %50 = load %struct.mpc_tree*, %struct.mpc_tree** %8, align 8
  %51 = load %struct.mpcc*, %struct.mpcc** %9, align 8
  %52 = call i32 %48(%struct.mpc* %49, %struct.mpc_tree* %50, %struct.mpcc* %51)
  %53 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %10, align 8
  %54 = icmp ne %struct.output_pixel_processor* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %10, align 8
  %57 = getelementptr inbounds %struct.output_pixel_processor, %struct.output_pixel_processor* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %43
  %65 = load %struct.dc*, %struct.dc** %3, align 8
  %66 = getelementptr inbounds %struct.dc, %struct.dc* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.hubp*, %struct.hubp** %5, align 8
  %68 = getelementptr inbounds %struct.hubp, %struct.hubp* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32 (%struct.hubp*)*, i32 (%struct.hubp*)** %70, align 8
  %72 = icmp ne i32 (%struct.hubp*)* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.hubp*, %struct.hubp** %5, align 8
  %75 = getelementptr inbounds %struct.hubp, %struct.hubp* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32 (%struct.hubp*)*, i32 (%struct.hubp*)** %77, align 8
  %79 = load %struct.hubp*, %struct.hubp** %5, align 8
  %80 = call i32 %78(%struct.hubp* %79)
  br label %81

81:                                               ; preds = %73, %64
  %82 = load %struct.dc*, %struct.dc** %3, align 8
  %83 = getelementptr inbounds %struct.dc, %struct.dc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.dc*, %struct.dc** %3, align 8
  %89 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %88)
  br label %90

90:                                               ; preds = %42, %87, %81
  ret void
}

declare dso_local i32 @dcn10_verify_allow_pstate_change_high(%struct.dc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

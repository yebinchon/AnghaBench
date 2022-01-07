; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_wait_for_mpcc_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_wait_for_mpcc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.resource_pool = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.pipe_ctx = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.hubp = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.hubp*, i32)* }

@MAX_PIPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.resource_pool*, %struct.pipe_ctx*)* @dcn10_wait_for_mpcc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_wait_for_mpcc_disconnect(%struct.dc* %0, %struct.resource_pool* %1, %struct.pipe_ctx* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.resource_pool*, align 8
  %6 = alloca %struct.pipe_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hubp*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %5, align 8
  store %struct.pipe_ctx* %2, %struct.pipe_ctx** %6, align 8
  %9 = load %struct.dc*, %struct.dc** %4, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.dc*, %struct.dc** %4, align 8
  %16 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %86

24:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %74, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MAX_PIPES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %25
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %29
  %42 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.hubp* @get_hubp_by_inst(%struct.resource_pool* %42, i32 %43)
  store %struct.hubp* %44, %struct.hubp** %8, align 8
  %45 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %46 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %50, align 8
  %52 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %53 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 %51(%struct.TYPE_12__* %54, i32 %55)
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 0, i32* %65, align 4
  %66 = load %struct.hubp*, %struct.hubp** %8, align 8
  %67 = getelementptr inbounds %struct.hubp, %struct.hubp* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %69, align 8
  %71 = load %struct.hubp*, %struct.hubp** %8, align 8
  %72 = call i32 %70(%struct.hubp* %71, i32 1)
  br label %73

73:                                               ; preds = %41, %29
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %25

77:                                               ; preds = %25
  %78 = load %struct.dc*, %struct.dc** %4, align 8
  %79 = getelementptr inbounds %struct.dc, %struct.dc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.dc*, %struct.dc** %4, align 8
  %85 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %84)
  br label %86

86:                                               ; preds = %23, %83, %77
  ret void
}

declare dso_local i32 @dcn10_verify_allow_pstate_change_high(%struct.dc*) #1

declare dso_local %struct.hubp* @get_hubp_by_inst(%struct.resource_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

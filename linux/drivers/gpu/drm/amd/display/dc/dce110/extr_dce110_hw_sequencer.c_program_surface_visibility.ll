; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_program_surface_visibility.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_program_surface_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_11__, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i64 }

@BLND_MODE_CURRENT_PIPE = common dso_local global i32 0, align 4
@BLND_MODE_BLENDING = common dso_local global i32 0, align 4
@BLND_MODE_OTHER_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @program_surface_visibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_surface_visibility(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %7 = load i32, i32* @BLND_MODE_CURRENT_PIPE, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %12
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @BLND_MODE_BLENDING, align 4
  store i32 %37, i32* %5, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @BLND_MODE_OTHER_PIPE, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %36
  br label %50

41:                                               ; preds = %12
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %41
  br label %50

50:                                               ; preds = %49, %40
  br label %60

51:                                               ; preds = %2
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %51
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.dc*, %struct.dc** %3, align 8
  %62 = getelementptr inbounds %struct.dc, %struct.dc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dce_set_blender_mode(i32 %63, i32 %69, i32 %70)
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %78, align 8
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 %79(%struct.TYPE_12__* %83, i32 %84)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dce_set_blender_mode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

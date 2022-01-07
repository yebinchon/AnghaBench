; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_program_all_pipe_in_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_program_all_pipe_in_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.pipe_ctx*, i32*, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_8__, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.dc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*)* @program_all_pipe_in_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_all_pipe_in_tree(%struct.dc* %0, %struct.pipe_ctx* %1, %struct.dc_state* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %2, %struct.dc_state** %6, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %73

12:                                               ; preds = %3
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %14 = call i32 @is_pipe_tree_visible(%struct.pipe_ctx* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)** %24, align 8
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %25(%struct.TYPE_13__* %29, i32 %33, i32 %37, i32 %41, i32 %45)
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %53, align 8
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = call i32 %54(%struct.TYPE_13__* %58, i32* %62)
  %64 = load %struct.dc*, %struct.dc** %4, align 8
  %65 = getelementptr inbounds %struct.dc, %struct.dc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %66, align 8
  %68 = load %struct.dc*, %struct.dc** %4, align 8
  %69 = bitcast %struct.dc* %68 to %struct.dc.0*
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 %67(%struct.dc.0* %69, %struct.pipe_ctx* %70, i32 %71)
  br label %73

73:                                               ; preds = %12, %3
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.dc*, %struct.dc** %4, align 8
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %81 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %82 = call i32 @dcn10_program_pipe(%struct.dc* %79, %struct.pipe_ctx* %80, %struct.dc_state* %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 0
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %85, align 8
  %87 = icmp ne %struct.pipe_ctx* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %89, i32 0, i32 0
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %90, align 8
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %93 = icmp ne %struct.pipe_ctx* %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.dc*, %struct.dc** %4, align 8
  %96 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %96, i32 0, i32 0
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %97, align 8
  %99 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  call void @program_all_pipe_in_tree(%struct.dc* %95, %struct.pipe_ctx* %98, %struct.dc_state* %99)
  br label %100

100:                                              ; preds = %94, %88, %83
  ret void
}

declare dso_local i32 @is_pipe_tree_visible(%struct.pipe_ctx*) #1

declare dso_local i32 @dcn10_program_pipe(%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

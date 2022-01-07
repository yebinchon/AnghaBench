; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_program_all_pipe_in_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_program_all_pipe_in_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.dc.0*, %struct.dc_state*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*, i32)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque
%struct.pipe_ctx = type { %struct.pipe_ctx*, %struct.pipe_ctx*, i32*, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.dc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*)* @dcn20_program_all_pipe_in_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_program_all_pipe_in_tree(%struct.dc* %0, %struct.pipe_ctx* %1, %struct.dc_state* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %2, %struct.dc_state** %6, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %94

12:                                               ; preds = %3
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %94, label %17

17:                                               ; preds = %12
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %19 = call i32 @is_pipe_tree_visible(%struct.pipe_ctx* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)** %29, align 8
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %30(%struct.TYPE_13__* %34, i32 %38, i32 %42, i32 %46, i32 %50)
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %58, align 8
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 3
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = call i32 %59(%struct.TYPE_13__* %63, i32* %67)
  %69 = load %struct.dc*, %struct.dc** %4, align 8
  %70 = getelementptr inbounds %struct.dc, %struct.dc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32 (%struct.dc.1*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.1*, %struct.pipe_ctx*, i32)** %71, align 8
  %73 = load %struct.dc*, %struct.dc** %4, align 8
  %74 = bitcast %struct.dc* %73 to %struct.dc.1*
  %75 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 %72(%struct.dc.1* %74, %struct.pipe_ctx* %75, i32 %76)
  %78 = load %struct.dc*, %struct.dc** %4, align 8
  %79 = getelementptr inbounds %struct.dc, %struct.dc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32 (%struct.dc.0*, %struct.dc_state*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.dc_state*, %struct.pipe_ctx*)** %80, align 8
  %82 = icmp ne i32 (%struct.dc.0*, %struct.dc_state*, %struct.pipe_ctx*)* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %17
  %84 = load %struct.dc*, %struct.dc** %4, align 8
  %85 = getelementptr inbounds %struct.dc, %struct.dc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32 (%struct.dc.0*, %struct.dc_state*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.dc_state*, %struct.pipe_ctx*)** %86, align 8
  %88 = load %struct.dc*, %struct.dc** %4, align 8
  %89 = bitcast %struct.dc* %88 to %struct.dc.0*
  %90 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %92 = call i32 %87(%struct.dc.0* %89, %struct.dc_state* %90, %struct.pipe_ctx* %91)
  br label %93

93:                                               ; preds = %83, %17
  br label %94

94:                                               ; preds = %93, %12, %3
  %95 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.dc*, %struct.dc** %4, align 8
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %102 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %103 = call i32 @dcn20_program_pipe(%struct.dc* %100, %struct.pipe_ctx* %101, %struct.dc_state* %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %105, i32 0, i32 1
  %107 = load %struct.pipe_ctx*, %struct.pipe_ctx** %106, align 8
  %108 = icmp ne %struct.pipe_ctx* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %111 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %110, i32 0, i32 1
  %112 = load %struct.pipe_ctx*, %struct.pipe_ctx** %111, align 8
  %113 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %114 = icmp ne %struct.pipe_ctx* %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @ASSERT(i32 %115)
  %117 = load %struct.dc*, %struct.dc** %4, align 8
  %118 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %119 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %118, i32 0, i32 1
  %120 = load %struct.pipe_ctx*, %struct.pipe_ctx** %119, align 8
  %121 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  call void @dcn20_program_all_pipe_in_tree(%struct.dc* %117, %struct.pipe_ctx* %120, %struct.dc_state* %121)
  br label %141

122:                                              ; preds = %104
  %123 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %124 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %123, i32 0, i32 0
  %125 = load %struct.pipe_ctx*, %struct.pipe_ctx** %124, align 8
  %126 = icmp ne %struct.pipe_ctx* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %129 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %128, i32 0, i32 0
  %130 = load %struct.pipe_ctx*, %struct.pipe_ctx** %129, align 8
  %131 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %132 = icmp ne %struct.pipe_ctx* %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @ASSERT(i32 %133)
  %135 = load %struct.dc*, %struct.dc** %4, align 8
  %136 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %137 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %136, i32 0, i32 0
  %138 = load %struct.pipe_ctx*, %struct.pipe_ctx** %137, align 8
  %139 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  call void @dcn20_program_all_pipe_in_tree(%struct.dc* %135, %struct.pipe_ctx* %138, %struct.dc_state* %139)
  br label %140

140:                                              ; preds = %127, %122
  br label %141

141:                                              ; preds = %140, %109
  ret void
}

declare dso_local i32 @is_pipe_tree_visible(%struct.pipe_ctx*) #1

declare dso_local i32 @dcn20_program_pipe(%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

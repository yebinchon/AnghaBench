; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_program_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_program_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, %struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.pipe_ctx = type { i32, %struct.TYPE_10__* }
%struct.dc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*)* @dcn20_program_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_program_pipe(%struct.dc* %0, %struct.pipe_ctx* %1, %struct.dc_state* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %2, %struct.dc_state** %6, align 8
  %7 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %8 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %21

13:                                               ; preds = %3
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %21

21:                                               ; preds = %13, %12
  %22 = phi i32 [ 1, %12 ], [ %20, %13 ]
  %23 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %22, i32* %28, align 8
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load %struct.dc*, %struct.dc** %4, align 8
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %40 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %41 = call i32 @dcn20_enable_plane(%struct.dc* %38, %struct.pipe_ctx* %39, %struct.dc_state* %40)
  br label %42

42:                                               ; preds = %37, %21
  %43 = load %struct.dc*, %struct.dc** %4, align 8
  %44 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %45 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %46 = call i32 @update_dchubp_dpp(%struct.dc* %43, %struct.pipe_ctx* %44, %struct.dc_state* %45)
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %48 = call i32 @set_hdr_multiplier(%struct.pipe_ctx* %47)
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %42
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %57
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %66, %57, %42
  %76 = load %struct.dc*, %struct.dc** %4, align 8
  %77 = getelementptr inbounds %struct.dc, %struct.dc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32 (%struct.pipe_ctx*, %struct.TYPE_10__*)*, i32 (%struct.pipe_ctx*, %struct.TYPE_10__*)** %78, align 8
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i32 %79(%struct.pipe_ctx* %80, %struct.TYPE_10__* %83)
  br label %85

85:                                               ; preds = %75, %66
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %85
  %95 = load %struct.dc*, %struct.dc** %4, align 8
  %96 = getelementptr inbounds %struct.dc, %struct.dc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, i32)** %97, align 8
  %99 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %100 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %98(%struct.pipe_ctx* %99, i32 %102)
  br label %104

104:                                              ; preds = %94, %85
  ret void
}

declare dso_local i32 @dcn20_enable_plane(%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*) #1

declare dso_local i32 @update_dchubp_dpp(%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*) #1

declare dso_local i32 @set_hdr_multiplier(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
